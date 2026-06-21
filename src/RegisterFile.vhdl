library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RegisterFile is
    Port ( wb : in STD_LOGIC_VECTOR (31 downto 0);  -- Changed from ALUout to wb
           inst11_7 : in STD_LOGIC_VECTOR (4 downto 0);
           inst19_15 : in STD_LOGIC_VECTOR (4 downto 0);
           inst24_20 : in STD_LOGIC_VECTOR (4 downto 0);
           clk : in STD_LOGIC;
           RegWEn : in STD_LOGIC;
           A : out STD_LOGIC_VECTOR (31 downto 0);
           B : out STD_LOGIC_VECTOR (31 downto 0);
           D : out STD_LOGIC_VECTOR (31 downto 0);
           INST : in STD_LOGIC_VECTOR (31 downto 0));
end RegisterFile;

architecture Behavioral2 of RegisterFile is
signal x00 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
signal x01 : STD_LOGIC_VECTOR (31 downto 0);
signal x02 : STD_LOGIC_VECTOR (31 downto 0);
signal x03 : STD_LOGIC_VECTOR (31 downto 0);
signal x04 : STD_LOGIC_VECTOR (31 downto 0);
signal x05 : STD_LOGIC_VECTOR (31 downto 0);
signal x06 : STD_LOGIC_VECTOR (31 downto 0);
signal x07 : STD_LOGIC_VECTOR (31 downto 0);
signal x08 : STD_LOGIC_VECTOR (31 downto 0);
signal x09 : STD_LOGIC_VECTOR (31 downto 0);
signal x010 : STD_LOGIC_VECTOR (31 downto 0);
signal x011 : STD_LOGIC_VECTOR (31 downto 0);
signal x012 : STD_LOGIC_VECTOR (31 downto 0);
signal x013 : STD_LOGIC_VECTOR (31 downto 0);
signal x014 : STD_LOGIC_VECTOR (31 downto 0);
signal x015 : STD_LOGIC_VECTOR (31 downto 0);
signal x016 : STD_LOGIC_VECTOR (31 downto 0);
signal x017 : STD_LOGIC_VECTOR (31 downto 0);
signal x018 : STD_LOGIC_VECTOR (31 downto 0);
signal x019 : STD_LOGIC_VECTOR (31 downto 0);
signal x020 : STD_LOGIC_VECTOR (31 downto 0);
signal x021 : STD_LOGIC_VECTOR (31 downto 0);
signal x022 : STD_LOGIC_VECTOR (31 downto 0);
signal x023 : STD_LOGIC_VECTOR (31 downto 0);
signal x024 : STD_LOGIC_VECTOR (31 downto 0);
signal x025 : STD_LOGIC_VECTOR (31 downto 0);
signal x026 : STD_LOGIC_VECTOR (31 downto 0);
signal x027 : STD_LOGIC_VECTOR (31 downto 0);
signal x028 : STD_LOGIC_VECTOR (31 downto 0);
signal x029 : STD_LOGIC_VECTOR (31 downto 0);
signal x030 : STD_LOGIC_VECTOR (31 downto 0);
signal x031 : STD_LOGIC_VECTOR (31 downto 0);
signal inst11_7_sig : STD_LOGIC_VECTOR (4 downto 0);
signal inst19_15_sig : STD_LOGIC_VECTOR (4 downto 0);
signal inst24_20_sig : STD_LOGIC_VECTOR (4 downto 0);
signal opcode : STD_LOGIC_VECTOR (6 downto 0);

begin
    process(clk, inst11_7, inst19_15, inst24_20, RegWEn, INST, wb) -- Changed process sensitivity list
    begin

        inst11_7_sig <= inst11_7;
        inst19_15_sig <= inst19_15;
        inst24_20_sig <= inst24_20;
        opcode <= INST(6 downto 0);

        case inst19_15_sig is
            when "00000" => A <= x00;
            when "00001" => A <= x01;
            when "00010" => A <= x02;
            when "00011" => A <= x03;
            when "00100" => A <= x04;
            when "00101" => A <= x05;
            when "00110" => A <= x06;
            when "00111" => A <= x07;
            when "01000" => A <= x08;
            when "01001" => A <= x09;
            when "01010" => A <= x010;
            when "01011" => A <= x011;
            when "01100" => A <= x012;
            when "01101" => A <= x013;
            when "01110" => A <= x014;
            when "01111" => A <= x015;
            when "10000" => A <= x016;
            when "10001" => A <= x017;
            when "10010" => A <= x018;
            when "10011" => A <= x019;
            when "10100" => A <= x020;
            when "10101" => A <= x021;
            when "10110" => A <= x022;
            when "10111" => A <= x023;
            when "11000" => A <= x024;
            when "11001" => A <= x025;
            when "11010" => A <= x026;
            when "11011" => A <= x027;
            when "11100" => A <= x028;
            when "11101" => A <= x029;
            when "11110" => A <= x030;
            when "11111" => A <= x031;
            when others => A <= "00000000000000000000000000000000";
        end case;

        if opcode = "0110011" then
            case inst24_20_sig is
                when "00000" => B <= x00;
                when "00001" => B <= x01;
                when "00010" => B <= x02;
                when "00011" => B <= x03;
                when "00100" => B <= x04;
                when "00101" => B <= x05;
                when "00110" => B <= x06;
                when "00111" => B <= x07;
                when "01000" => B <= x08;
                when "01001" => B <= x09;
                when "01010" => B <= x010;
                when "01011" => B <= x011;
                when "01100" => B <= x012;
                when "01101" => B <= x013;
                when "01110" => B <= x014;
                when "01111" => B <= x015;
                when "10000" => B <= x016;
                when "10001" => B <= x017;
                when "10010" => B <= x018;
                when "10011" => B <= x019;
                when "10100" => B <= x020;
                when "10101" => B <= x021;
                when "10110" => B <= x022;
                when "10111" => B <= x023;
                when "11000" => B <= x024;
                when "11001" => B <= x025;
                when "11010" => B <= x026;
                when "11011" => B <= x027;
                when "11100" => B <= x028;
                when "11101" => B <= x029;
                when "11110" => B <= x030;
                when "11111" => B <= x031;
                when others => B <= "00000000000000000000000000000000";
            end case;
        end if;

        if rising_edge (clk) then
            if RegWEn = '1' then

                case inst11_7_sig is
                    when "00000" => x00 <= wb; -- Changed from ALUout to wb
                    when "00001" => x01 <= wb; -- Changed from ALUout to wb
                    when "00010" => x02 <= wb; -- Changed from ALUout to wb
                    when "00011" => x03 <= wb; -- Changed from ALUout to wb
                    when "00100" => x04 <= wb; -- Changed from ALUout to wb
                    when "00101" => x05 <= wb; -- Changed from ALUout to wb
                    when "00110" => x06 <= wb; -- Changed from ALUout to wb
                    when "00111" => x07 <= wb; -- Changed from ALUout to wb
                    when "01000" => x08 <= wb; -- Changed from ALUout to wb
                    when "01001" => x09 <= wb; -- Changed from ALUout to wb
                    when "01010" => x010 <= wb; -- Changed from ALUout to wb
                    when "01011" => x011 <= wb; -- Changed from ALUout to wb
                    when "01100" => x012 <= wb; -- Changed from ALUout to wb
                    when "01101" => x013 <= wb; -- Changed from ALUout to wb
                    when "01110" => x014 <= wb; -- Changed from ALUout to wb
                    when "01111" => x015 <= wb; -- Changed from ALUout to wb
                    when "10000" => x016 <= wb; -- Changed from ALUout to wb
                    when "10001" => x017 <= wb; -- Changed from ALUout to wb
                    when "10010" => x018 <= wb; -- Changed from ALUout to wb
                    when "10011" => x019 <= wb; -- Changed from ALUout to wb
                    when "10100" => x020 <= wb; -- Changed from ALUout to wb
                    when "10101" => x021 <= wb; -- Changed from ALUout to wb
                    when "10110" => x022 <= wb; -- Changed from ALUout to wb
                    when "10111" => x023 <= wb; -- Changed from ALUout to wb
                    when "11000" => x024 <= wb; -- Changed from ALUout to wb
                    when "11001" => x025 <= wb; -- Changed from ALUout to wb
                    when "11010" => x026 <= wb; -- Changed from ALUout to wb
                    when "11011" => x027 <= wb; -- Changed from ALUout to wb
                    when "11100" => x028 <= wb; -- Changed from ALUout to wb
                    when "11101" => x029 <= wb; -- Changed from ALUout to wb
                    when "11110" => x030 <= wb; -- Changed from ALUout to wb
                    when "11111" => x031 <= wb; -- Changed from ALUout to wb
                end case;
                D <= wb; -- Changed from ALUout to wb
            end if;
        end if;
    end process;

end Behavioral2;
