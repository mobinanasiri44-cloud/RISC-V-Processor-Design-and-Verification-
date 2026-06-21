library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DMEM is
    Port ( Addr : in STD_LOGIC_vector(31 downto 0);
           DataW : in STD_LOGIC_vector(31 downto 0);
           clk : in STD_LOGIC;
           MemRW : in STD_LOGIC;
           DataR : out STD_LOGIC_vector(31 downto 0));
end DMEM;

architecture Behavioral of DMEM is

signal x00 : STD_LOGIC_VECTOR (31 downto 0);
signal x01 : STD_LOGIC_VECTOR (31 downto 0);
signal x02 : STD_LOGIC_VECTOR (31 downto 0);
signal x03 : STD_LOGIC_VECTOR (31 downto 0);
signal x04 : STD_LOGIC_VECTOR (31 downto 0);
signal x05 : STD_LOGIC_VECTOR (31 downto 0);
signal x06 : STD_LOGIC_VECTOR (31 downto 0);
signal x07 : STD_LOGIC_VECTOR (31 downto 0);
signal x08 : STD_LOGIC_VECTOR (31 downto 0);
signal x09 : STD_LOGIC_VECTOR (31 downto 0);
signal x010: STD_LOGIC_VECTOR (31 downto 0);
signal x011: STD_LOGIC_VECTOR (31 downto 0);
signal x012: STD_LOGIC_VECTOR (31 downto 0);
signal x013: STD_LOGIC_VECTOR (31 downto 0);
signal x014: STD_LOGIC_VECTOR (31 downto 0);
signal x015: STD_LOGIC_VECTOR (31 downto 0);
signal x016: STD_LOGIC_VECTOR (31 downto 0);
signal x017: STD_LOGIC_VECTOR (31 downto 0);
signal x018: STD_LOGIC_VECTOR (31 downto 0);
signal x019: STD_LOGIC_VECTOR (31 downto 0);
signal x020: STD_LOGIC_VECTOR (31 downto 0);
signal x021: STD_LOGIC_VECTOR (31 downto 0);
signal x022: STD_LOGIC_VECTOR (31 downto 0);
signal x023: STD_LOGIC_VECTOR (31 downto 0);
signal x024: STD_LOGIC_VECTOR (31 downto 0);
signal x025: STD_LOGIC_VECTOR (31 downto 0);
signal x026: STD_LOGIC_VECTOR (31 downto 0);
signal x027: STD_LOGIC_VECTOR (31 downto 0);
signal x028: STD_LOGIC_VECTOR (31 downto 0);
signal x029: STD_LOGIC_VECTOR (31 downto 0);
signal x030: STD_LOGIC_VECTOR (31 downto 0);
signal x031: STD_LOGIC_VECTOR (31 downto 0);

begin

    process(clk, Addr, DataW, MemRW)

        variable x0  : STD_LOGIC_VECTOR (31 downto 0);
        variable x1  : STD_LOGIC_VECTOR (31 downto 0);
        variable x2  : STD_LOGIC_VECTOR (31 downto 0);
        variable x3  : STD_LOGIC_VECTOR (31 downto 0);
        variable x4  : STD_LOGIC_VECTOR (31 downto 0);
        variable x5  : STD_LOGIC_VECTOR (31 downto 0);
        variable x6  : STD_LOGIC_VECTOR (31 downto 0);
        variable x7  : STD_LOGIC_VECTOR (31 downto 0);
        variable x8  : STD_LOGIC_VECTOR (31 downto 0);
        variable x9  : STD_LOGIC_VECTOR (31 downto 0);
        variable x10 : STD_LOGIC_VECTOR (31 downto 0);
        variable x11 : STD_LOGIC_VECTOR (31 downto 0);
        variable x12 : STD_LOGIC_VECTOR (31 downto 0);
        variable x13 : STD_LOGIC_VECTOR (31 downto 0);
        variable x14 : STD_LOGIC_VECTOR (31 downto 0);
        variable x15 : STD_LOGIC_VECTOR (31 downto 0);
        variable x16 : STD_LOGIC_VECTOR (31 downto 0);
        variable x17 : STD_LOGIC_VECTOR (31 downto 0);
        variable x18 : STD_LOGIC_VECTOR (31 downto 0);
        variable x19 : STD_LOGIC_VECTOR (31 downto 0);
        variable x20 : STD_LOGIC_VECTOR (31 downto 0);
        variable x21 : STD_LOGIC_VECTOR (31 downto 0);
        variable x22 : STD_LOGIC_VECTOR (31 downto 0);
        variable x23 : STD_LOGIC_VECTOR (31 downto 0);
        variable x24 : STD_LOGIC_VECTOR (31 downto 0);
        variable x25 : STD_LOGIC_VECTOR (31 downto 0);
        variable x26 : STD_LOGIC_VECTOR (31 downto 0);
        variable x27 : STD_LOGIC_VECTOR (31 downto 0);
        variable x28 : STD_LOGIC_VECTOR (31 downto 0);
        variable x29 : STD_LOGIC_VECTOR (31 downto 0);
        variable x30 : STD_LOGIC_VECTOR (31 downto 0);
        variable x31 : STD_LOGIC_VECTOR (31 downto 0);

    begin

        if rising_edge(clk) then
            if MemRW = '0' then
                x0  := x00;
                x1  := x01;
                x2  := x02;
                x3  := x03;
                x4  := x04;
                x5  := x05;
                x6  := x06;
                x7  := x07;
                x8  := x08;
                x9  := x09;
                x10 := x010;
                x11 := x011;
                x12 := x012;
                x13 := x013;
                x14 := x014;
                x15 := x015;
                x16 := x016;
                x17 := x017;
                x18 := x018;
                x19 := x019;
                x20 := x020;
                x21 := x021;
                x22 := x022;
                x23 := x023;
                x24 := x024;
                x25 := x025;
                x26 := x026;
                x27 := x027;
                x28 := x028;
                x29 := x029;
                x30 := x030;
                x31 := x031;

                case Addr is
                    when "00000000000000000000000000000000" => DataR <= x0;
                    when "00000000000000000000000000000001" => DataR <= x1;
                    when "00000000000000000000000000000010" => DataR <= x2;
                    when "00000000000000000000000000000011" => DataR <= x3;
                    when "00000000000000000000000000000100" => DataR <= x4;
                    when "00000000000000000000000000000101" => DataR <= x5;
                    when "00000000000000000000000000000110" => DataR <= x6;
                    when "00000000000000000000000000000111" => DataR <= x7;
                    when "00000000000000000000000000001000" => DataR <= x8;
                    when "00000000000000000000000000001001" => DataR <= x9;
                    when "00000000000000000000000000001010" => DataR <= x10;
                    when "00000000000000000000000000001011" => DataR <= x11;
                    when "00000000000000000000000000001100" => DataR <= x12;
                    when "00000000000000000000000000001101" => DataR <= x13;
                    when "00000000000000000000000000001110" => DataR <= x14;
                    when "00000000000000000000000000001111" => DataR <= x15;
                    when "00000000000000000000000000010000" => DataR <= x16;
                    when "00000000000000000000000000010001" => DataR <= x17;
                    when "00000000000000000000000000010010" => DataR <= x18;
                    when "00000000000000000000000000010011" => DataR <= x19;
                    when "00000000000000000000000000010100" => DataR <= x20;
                    when "00000000000000000000000000010101" => DataR <= x21;
                    when "00000000000000000000000000010110" => DataR <= x22;
                    when "00000000000000000000000000010111" => DataR <= x23;
                    when "00000000000000000000000000011000" => DataR <= x24;
                    when "00000000000000000000000000011001" => DataR <= x25;
                    when "00000000000000000000000000011010" => DataR <= x26;
                    when "00000000000000000000000000011011" => DataR <= x27;
                    when "00000000000000000000000000011100" => DataR <= x28;
                    when "00000000000000000000000000011101" => DataR <= x29;
                    when "00000000000000000000000000011110" => DataR <= x30;
                    when "00000000000000000000000000011111" => DataR <= x31;
                    when others => DataR <= "00000000000000000000000000000000";
                end case;

            elsif MemRW = '1' then
                case Addr is
                    when "00000000000000000000000000000000" => x01 <= DataW;
                    when "00000000000000000000000000000001" => x02 <= DataW;
                    when "00000000000000000000000000000010" => x03 <= DataW;
                    when "00000000000000000000000000000011" => x04 <= DataW;
                    when "00000000000000000000000000000100" => x05 <= DataW;
                    when "00000000000000000000000000000101" => x06 <= DataW;
                    when "00000000000000000000000000000110" => x07 <= DataW;
                    when "00000000000000000000000000000111" => x08 <= DataW;
                    when "00000000000000000000000000001000" => x09 <= DataW;
                    when "00000000000000000000000000001001" => x010 <= DataW;
                    when "00000000000000000000000000001010" => x011 <= DataW;
                    when "00000000000000000000000000001011" => x012 <= DataW;
                    when "00000000000000000000000000001100" => x013 <= DataW;
                    when "00000000000000000000000000001101" => x014 <= DataW;
                    when "00000000000000000000000000001110" => x015 <= DataW;
                    when "00000000000000000000000000001111" => x016 <= DataW;
                    when "00000000000000000000000000010000" => x017 <= DataW;
                    when "00000000000000000000000000010001" => x018 <= DataW;
                    when "00000000000000000000000000010010" => x019 <= DataW;
                    when "00000000000000000000000000010011" => x020 <= DataW;
                    when "00000000000000000000000000010100" => x021 <= DataW;
                    when "00000000000000000000000000010101" => x022 <= DataW;
                    when "00000000000000000000000000010110" => x023 <= DataW;
                    when "00000000000000000000000000010111" => x024 <= DataW;
                    when "00000000000000000000000000011000" => x025 <= DataW;
                    when "00000000000000000000000000011001" => x026 <= DataW;
                    when "00000000000000000000000000011010" => x027 <= DataW;
                    when "00000000000000000000000000011011" => x028 <= DataW;
                    when "00000000000000000000000000011100" => x029 <= DataW;
                    when "00000000000000000000000000011101" => x030 <= DataW;
                    when "00000000000000000000000000011110" => x031 <= DataW;
                    when "00000000000000000000000000011111" => x031 <= DataW;
                    when others => x00 <= "00000000000000000000000000000000";
                end case;
            end if;
        end if;
    end process;

end Behavioral;
