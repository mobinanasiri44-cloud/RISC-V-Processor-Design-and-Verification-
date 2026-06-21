library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ImmGen is
    Port ( inst31_7 : in STD_LOGIC_VECTOR (24 downto 0);
           ImmSel : in STD_LOGIC_VECTOR (1 downto 0);
           imm31_0 : out STD_LOGIC_VECTOR (31 downto 0) );
end ImmGen;

architecture Behavioral of ImmGen is
signal SIGN : STD_LOGIC;

begin
    process(SIGN, inst31_7, ImmSel)
    begin
        SIGN <= inst31_7(24);
        if ImmSel = "00" then
            imm31_0 <= "00000000000000000000000000000000";
        elsif ImmSel = "01" then
            case SIGN is
                when '0' => imm31_0 <= "00000000000000000000" & inst31_7(24 downto 13);
                when '1' => imm31_0 <= "11111111111111111111" & inst31_7(24 downto 13);
                when others => imm31_0 <= "00000000000000000000000000000000";
            end case;
        elsif ImmSel = "10" then
            case SIGN is
                when '0' => imm31_0 <= "00000000000000000000" & inst31_7(24 downto 13);
                when '1' => imm31_0 <= "11111111111111111111" & inst31_7(24 downto 13);
                when others => imm31_0 <= "00000000000000000000000000000000";
            end case;
        elsif ImmSel = "11" then
            case SIGN is
                when '0' => imm31_0 <= "000000000000000000" & inst31_7(24 downto 18) & inst31_7(4 downto 0);
                when '1' => imm31_0 <= "111111111111111111" & inst31_7(24 downto 18) & inst31_7(4 downto 0);
                when others => imm31_0 <= "00000000000000000000000000000000";
            end case;
            imm31_0 <= (others => '0');
        end if;
    end process;

end Behavioral;
