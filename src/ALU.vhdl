library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU is
    Port (
        A        : in  STD_LOGIC_VECTOR (31 downto 0);
        C        : in  STD_LOGIC_VECTOR (31 downto 0);
        ALUSel   : in  STD_LOGIC_VECTOR (1 downto 0);
        ALUout   : out STD_LOGIC_VECTOR (31 downto 0)
    );
end ALU;

architecture Behavioral of ALU is
begin
    process(A, C, ALUSel)
        variable A_sig   : signed(31 downto 0);
        variable C_sig   : signed(31 downto 0);
        variable result  : signed(31 downto 0);
        variable result1 : STD_LOGIC_VECTOR (31 downto 0);
    begin
        A_sig := signed(A);
        C_sig := signed(C);

        case ALUSel is
            when "00" =>
                result := A_sig + C_sig;
            when "01" =>
                result := A_sig - C_sig;
            when "10" =>
                result1 := A and C;
            when "11" =>
                result1 := A or C;
            when others =>
                result := (others => '0');
        end case;

        if ALUSel = "00" or ALUSel = "01" then
            ALUout <= std_logic_vector(result);
        else
            ALUout <= result1;
        end if;
    end process;
end Behavioral;
