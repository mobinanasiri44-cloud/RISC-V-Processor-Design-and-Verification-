library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PC is
    Port ( clk : in STD_LOGIC;
           PCout : out STD_LOGIC_vector(5 downto 0));
end PC;

architecture Behavioral4 of PC is
    -- Using 'unsigned' makes it compatible with NUMERIC_STD
    signal PC_current : unsigned(5 downto 0) := (others => '0');
    signal stop : std_logic := '0';

begin
    -- Combinational logic to output the current PC immediately
    PCout <= std_logic_vector(PC_current);

    process(clk)
    begin
        if rising_edge (clk) then
            if stop = '0' then
                if PC_current = "111100" then
                    stop <= '1';
                else
                    PC_current <= PC_current + 4; -- Add 4 using numeric_std
                end if;
            end if;
        end if;
    end process;
end Behavioral4;
