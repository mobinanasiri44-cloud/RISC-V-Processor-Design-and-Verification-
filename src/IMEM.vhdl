library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IMEM is
    Port ( PCout : in STD_LOGIC_vector(5 downto 0);
           imem_in : in STD_LOGIC_vector(511 downto 0);
           INST : out STD_LOGIC_vector(31 downto 0);
           inst11_7 : out STD_LOGIC_vector(4 downto 0);
           inst19_15 : out STD_LOGIC_vector(4 downto 0);
           inst24_20 : out STD_LOGIC_vector(4 downto 0);
           inst31_7 : out STD_LOGIC_vector(24 downto 0)); 
end IMEM;

architecture Behavioral3 of IMEM is
signal middle_inst : std_logic_vector(31 downto 0);

begin
    process(PCout, imem_in, middle_inst)
    begin
        case PCout is
            when "000000" => middle_inst <= std_logic_vector(imem_in(511 downto 480));
            when "000100" => middle_inst <= std_logic_vector(imem_in(479 downto 448));
            when "001000" => middle_inst <= std_logic_vector(imem_in(447 downto 416));
            when "001100" => middle_inst <= std_logic_vector(imem_in(415 downto 384));
            when "010000" => middle_inst <= std_logic_vector(imem_in(383 downto 352));
            when "010100" => middle_inst <= std_logic_vector(imem_in(351 downto 320));
            when "011000" => middle_inst <= std_logic_vector(imem_in(319 downto 288));
            when "011100" => middle_inst <= std_logic_vector(imem_in(287 downto 256));
            when "100000" => middle_inst <= std_logic_vector(imem_in(255 downto 224));
            when "100100" => middle_inst <= std_logic_vector(imem_in(223 downto 192));
            when "101000" => middle_inst <= std_logic_vector(imem_in(191 downto 160));
            when "101100" => middle_inst <= std_logic_vector(imem_in(159 downto 128));
            when "110000" => middle_inst <= std_logic_vector(imem_in(127 downto 96));
            when "110100" => middle_inst <= std_logic_vector(imem_in(95 downto 64));
            when "111000" => middle_inst <= std_logic_vector(imem_in(63 downto 32));
            when "111100" => middle_inst <= std_logic_vector(imem_in(31 downto 0));
            when others => null;
        end case;
    end process;
    

    inst11_7  <= middle_inst(11 downto 7);
    inst19_15 <= middle_inst(19 downto 15);
    inst24_20 <= middle_inst(24 downto 20);
    inst31_7  <= middle_inst(31 downto 7);
    INST      <= middle_inst;
    
end Behavioral3;
