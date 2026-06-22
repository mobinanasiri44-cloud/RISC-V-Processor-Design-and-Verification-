library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RISCV_TopModule_tb is
end RISCV_TopModule_tb;

architecture Behavioral of RISCV_TopModule_tb is

component RISCV_TopModule is
port ( clk : in STD_LOGIC;
       imem_in : in STD_LOGIC_vector(511 downto 0);
       A : out STD_LOGIC_VECTOR (31 downto 0);
       B : out STD_LOGIC_VECTOR (31 downto 0);
       D : out STD_LOGIC_VECTOR (31 downto 0);
       RegWEn : out STD_LOGIC;
       ALUSel : out STD_LOGIC_vector(1 downto 0);
       BSel : out STD_LOGIC;
       C : out STD_LOGIC_VECTOR (31 downto 0);
       imm31_0 : out STD_LOGIC_vector(31 downto 0));
end component;

signal clk : STD_LOGIC;
signal imem_in : STD_LOGIC_vector(511 downto 0) := "0000000001010000000000010010011" &
                         "00000001010000000000010010011" &
                         "000000001110000000000110010011" &
                         "0000000000100001000001000110011" &
                         "00000000011001000000101011011" &
                         X"00000000000000000000000000000000" &
                         X"00000000000000000000000000000000";

signal A : STD_LOGIC_VECTOR (31 downto 0);
signal B : STD_LOGIC_VECTOR (31 downto 0);
signal D : STD_LOGIC_VECTOR (31 downto 0);
signal RegWEn : STD_LOGIC;
signal ALUSel : STD_LOGIC_vector(1 downto 0);
signal BSel : STD_LOGIC;
signal C : STD_LOGIC_VECTOR (31 downto 0);
signal imm31_0 : STD_LOGIC_vector(31 downto 0);
constant clk_period : time := 10 ns;

begin

MRT : RISCV_TopModule
port map ( clk => clk,
           A => A,
           B => B,
           D => D,
           imem_in => imem_in,
           RegWEn => RegWEn,
           ALUSel => ALUSel,
           BSel => BSel,
           C => C,
           imm31_0 => imm31_0);

clk_process : process
begin
    clk <= '1';
    wait for clk_period / 2;
    clk <= '0';
    wait for clk_period / 2;
end process;

RISCV_process_code1 : process
begin
    wait for 70 ns;
    report "Simulation finished at 70ns.";
    assert false report "End of simulation." severity failure;
end process;

end Behavioral;
