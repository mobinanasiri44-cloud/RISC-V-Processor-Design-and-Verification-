library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity help5 is
    Port ( 
           -- Inputs for the Control Logic (help1)
           INST      : in STD_LOGIC_VECTOR (31 downto 0);
           inst31_20 : in STD_LOGIC_VECTOR (31 downto 0);
           
           -- Inputs for the ALU and Memory (help4)
           A         : in STD_LOGIC_VECTOR (31 downto 0);
           B         : in STD_LOGIC_VECTOR (31 downto 0);
           Addr      : in STD_LOGIC_VECTOR (31 downto 0);
           DataW     : in STD_LOGIC_VECTOR (31 downto 0);
           clk       : in STD_LOGIC;
           MemRW     : in STD_LOGIC;
           WBSel     : in STD_LOGIC;
           
           -- Outputs from the unified stage
           C         : out STD_LOGIC_VECTOR (31 downto 0);
           wb        : out STD_LOGIC_VECTOR (31 downto 0);
           RegWEn    : out STD_LOGIC
           );
end help5;

architecture Behavioral of help5 is

    component help1 is
        Port ( INST      : in STD_LOGIC_VECTOR(31 downto 0);
               inst31_20 : in STD_LOGIC_VECTOR (31 downto 20);
               imm31_0   : out STD_LOGIC_VECTOR (31 downto 0);
               RegWEn    : out STD_LOGIC;
               BSel      : out STD_LOGIC;
               ALUSel    : out STD_LOGIC_VECTOR (1 downto 0));
    end component;

    component help4 is
        Port ( A       : in STD_LOGIC_VECTOR (31 downto 0);
               B       : in STD_LOGIC_VECTOR (31 downto 0);
               imm31_0 : in STD_LOGIC_VECTOR (31 downto 0);
               BSel    : in STD_LOGIC;
               ALUSel  : in STD_LOGIC_VECTOR (1 downto 0);
               Addr    : in STD_LOGIC_VECTOR (31 downto 0);
               DataW   : in STD_LOGIC_VECTOR (31 downto 0);
               clk     : in STD_LOGIC;
               MemRW   : in STD_LOGIC;
               WBSel   : in STD_LOGIC;
               C       : out STD_LOGIC_VECTOR (31 downto 0);
               wb      : out STD_LOGIC_VECTOR (31 downto 0) );
    end component;

    -- Internal signals to connect the outputs of help1 to the inputs of help4
    signal sig_imm31_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal sig_BSel    : STD_LOGIC;
    signal sig_ALUSel  : STD_LOGIC_VECTOR (1 downto 0);

begin

    H0 : help1
    port map ( INST      => INST,
               inst31_20 => inst31_20,
               imm31_0   => sig_imm31_0,
               RegWEn    => RegWEn,
               BSel      => sig_BSel,
               ALUSel    => sig_ALUSel
    );

    H1 : help4
    port map ( A       => A,
               B       => B,
               imm31_0 => sig_imm31_0,
               BSel    => sig_BSel,
               ALUSel  => sig_ALUSel,
               Addr    => Addr,
               DataW   => DataW,
               clk     => clk,
               MemRW   => MemRW,
               WBSel   => WBSel,
               C       => C,
               wb      => wb
    );

end Behavioral;
