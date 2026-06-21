library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity help2 is
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           imm31_0 : in STD_LOGIC_VECTOR (31 downto 0);
           BSel : in STD_LOGIC;
           ALUSel : in STD_LOGIC_VECTOR (1 downto 0);
           C : out STD_LOGIC_VECTOR (31 downto 0);
           ALUout : out STD_LOGIC_VECTOR (31 downto 0) );
end help2;

architecture Behavioral of help2 is

    component BSelMUX is
        port ( B : in STD_LOGIC_VECTOR(31 downto 0);
               imm31_0 : in STD_LOGIC_VECTOR(31 downto 0);
               BSel : in STD_LOGIC;
               C : out STD_LOGIC_VECTOR(31 downto 0) );
    end component;

    component ALU is
        port ( A : in STD_LOGIC_VECTOR (31 downto 0);
               C : in STD_LOGIC_VECTOR (31 downto 0);
               ALUSel : in STD_LOGIC_VECTOR (1 downto 0);
               ALUout : out STD_LOGIC_VECTOR (31 downto 0));
    end component;

    signal C_sig : STD_LOGIC_VECTOR (31 downto 0);

begin

    H20 : BSelMUX
    port map ( B => B,
               BSel => BSel,
               imm31_0 => imm31_0,
               C => C_sig
    );

    H21 : ALU
    port map ( A => A,
               ALUSel => ALUSel,
               ALUout => ALUout,
               C => C_sig
    );

    C <= C_sig;
end Behavioral;
