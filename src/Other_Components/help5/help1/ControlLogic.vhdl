library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ControlLogic is
    Port ( INST : in STD_LOGIC_VECTOR(31 downto 0);
           RegWEn : out STD_LOGIC;
           ImmSel : out STD_LOGIC_VECTOR(1 downto 0);
           BSel : out STD_LOGIC;
           ALUSel : out STD_LOGIC_VECTOR (1 downto 0);
           MemRW : out STD_LOGIC;
           WBSel : out STD_LOGIC);
end ControlLogic;

architecture Behavioral5 of ControlLogic is

begin

    process(INST)
        variable opcode : STD_LOGIC_VECTOR (6 downto 0);
        variable funct7 : STD_LOGIC_vector (6 downto 0);
        variable funct3 : STD_LOGIC_vector (2 downto 0);
        variable result : STD_LOGIC_vector (1 downto 0);
    begin
        opcode := INST(6 downto 0);
        funct3 := INST(14 downto 12);
        if opcode = "0110011" then
            funct7 := INST(31 downto 25);
        else
            funct7 := "1111111";
        end if;

        case opcode is
            when "0110011" => ImmSel <= "00";
            when "0010011" => ImmSel <= "01";
            when "0000011" => ImmSel <= "10";
            when "0100011" => ImmSel <= "11";
            when others => null;
        end case;

        case opcode is
            when "0110011" => BSel <= '0';
            when "0010011" => BSel <= '1';
            when "0000011" => BSel <= '1';
            when "0100011" => BSel <= '1';
            when others => null;
        end case;

        if opcode = "0110011" then
            if funct3 = "000" and funct7 = "0000000" then
                result := "00";
            elsif funct3 = "000" and funct7 = "0100000" then
                result := "01";
            elsif funct3 = "111" and funct7 = "0000000" then
                result := "10";
            elsif funct3 = "110" and funct7 = "0000000" then
                result := "11";
            else
                result := "00";
            end if;
        elsif opcode = "0010011" then
            if funct3 = "000" then
                result := "00";
            elsif funct3 = "111" then
                result := "10";
            elsif funct3 = "110" then
                result := "11";
            else
                result := "00";
            end if;
        elsif opcode = "0000011" then
            result := "00";
        elsif opcode = "0100011" then
            result := "00";
        else
            result := "00";
        end if;
        ALUSel <= result;

        case opcode is
            when "0110011" => RegWEn <= '1';
            when "0010011" => RegWEn <= '1';
            when "0000011" => RegWEn <= '1';
            when "0100011" => RegWEn <= '0';
            when others => null;
        end case;

        case opcode is
            when "0000011" => MemRW <= '0';
            when "0100011" => MemRW <= '1';
            when others => null;
        end case;

        case opcode is
            when "0110011" => WBSel <= '1';
            when "0010011" => WBSel <= '1';
            when "0000011" => WBSel <= '0';
            when "0100011" => WBSel <= '0';
            when others => null;
        end case;

    end process;

end Behavioral5;
