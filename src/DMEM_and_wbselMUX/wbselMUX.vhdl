library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity wbselMUX is
    Port ( ALUout : in STD_LOGIC_vector(31 downto 0);
           DataR : in STD_LOGIC_vector(31 downto 0);
           WBSel : in STD_LOGIC;
           wb : out STD_LOGIC_vector(31 downto 0));
end wbselMUX;

architecture Behavioral of wbselMUX is

begin
    process (WBSel, ALUout, DataR)
    begin
        if WBSel = '0' then
            wb <= DataR;
        else
            wb <= ALUout;
        end if;
    end process;

end Behavioral;
