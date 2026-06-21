library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity help3 is
    Port ( Addr : in STD_LOGIC_vector(31 downto 0);
           DataW : in STD_LOGIC_vector(31 downto 0);
           clk : in STD_LOGIC;
           MemRW : in STD_LOGIC;
           ALUout : in STD_LOGIC_vector(31 downto 0);
           WBSel : in STD_LOGIC;
           wb : out STD_LOGIC_vector(31 downto 0));
end help3;

architecture Behavioral of help3 is

    component DMEM is
        port ( Addr : in STD_LOGIC_vector(31 downto 0);
               DataW : in STD_LOGIC_vector(31 downto 0);
               clk : in STD_LOGIC;
               MemRW : in STD_LOGIC;
               DataR : out STD_LOGIC_vector(31 downto 0));
    end component;

    component wbselMUX is
        port ( ALUout : in STD_LOGIC_vector(31 downto 0);
               DataR : in STD_LOGIC_vector(31 downto 0);
               WBSel : in STD_LOGIC;
               wb : out STD_LOGIC_vector(31 downto 0));
    end component;

    signal DataR_sig : STD_LOGIC_vector(31 downto 0);

begin

    H30 : DMEM
    port map ( Addr => Addr,
               DataW => DataW,
               clk => clk,
               MemRW => MemRW,
               DataR => DataR_sig
    );

    H31 : wbselMUX
    port map ( ALUout => ALUout,
               DataR => DataR_sig,
               WBSel => WBSel,
               wb => wb
    );

end Behavioral;
