library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BSelMUX is
    Port ( B : in STD_LOGIC_VECTOR(31 downto 0);
           imm31_0 : in STD_LOGIC_VECTOR(31 downto 0);
           BSel : in STD_LOGIC;
           C : out STD_LOGIC_VECTOR(31 downto 0));
end BSelMUX;

architecture Behavioral6 of BSelMUX is

begin
    process(BSel, imm31_0, B)
    begin
        if BSel = '0' then
            C <= B;
        else
            C <= imm31_0;
        end if;
    end process;

end Behavioral6;
