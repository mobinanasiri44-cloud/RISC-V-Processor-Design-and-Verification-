library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity help4 is
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           imm31_0 : in STD_LOGIC_VECTOR (31 downto 0);
           BSel : in STD_LOGIC;
           ALUSel : in STD_LOGIC_VECTOR (1 downto 0);
           
           Addr : in STD_LOGIC_VECTOR (31 downto 0);
           DataW : in STD_LOGIC_VECTOR (31 downto 0);
           clk : in STD_LOGIC;
           MemRW : in STD_LOGIC;
           WBSel : in STD_LOGIC;
           
           C : out STD_LOGIC_VECTOR (31 downto 0);
           wb : out STD_LOGIC_VECTOR (31 downto 0) );
end help4;

architecture Behavioral of help4 is

    component help2 is
        Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
               B : in STD_LOGIC_VECTOR (31 downto 0);
               imm31_0 : in STD_LOGIC_VECTOR (31 downto 0);
               BSel : in STD_LOGIC;
               ALUSel : in STD_LOGIC_VECTOR (1 downto 0);
               C : out STD_LOGIC_VECTOR (31 downto 0);
               ALUout : out STD_LOGIC_VECTOR (31 downto 0) );
    end component;

    component help3 is
        Port ( Addr : in STD_LOGIC_vector(31 downto 0);
               DataW : in STD_LOGIC_vector(31 downto 0);
               clk : in STD_LOGIC;
               MemRW : in STD_LOGIC;
               ALUout : in STD_LOGIC_vector(31 downto 0);
               WBSel : in STD_LOGIC;
               wb : out STD_LOGIC_vector(31 downto 0));
    end component;

    -- Internal signal to connect ALUout from help2 to ALUout input of help3
    signal ALUout_sig : STD_LOGIC_VECTOR (31 downto 0);

begin

    Inst_help2 : help2
    port map ( A => A,
               B => B,
               imm31_0 => imm31_0,
               BSel => BSel,
               ALUSel => ALUSel,
               C => C,
               ALUout => ALUout_sig
    );

    Inst_help3 : help3
    port map ( Addr => Addr,
               DataW => DataW,
               clk => clk,
               MemRW => MemRW,
               ALUout => ALUout_sig,
               WBSel => WBSel,
               wb => wb
    );

end Behavioral;
