library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RISCV_TOP_BONUS_tb is
end RISCV_TOP_BONUS_tb;

architecture Behavioral of RISCV_TOP_BONUS_tb is

component RISCV_TOP_BONUS is
port ( clk : in STD_LOGIC;
       imem_in : in STD_LOGIC_vector(511 downto 0);
       D : out STD_LOGIC_VECTOR (31 downto 0);
       Addr : out STD_LOGIC_vector(31 downto 0);
       DataW : out STD_LOGIC_vector(31 downto 0);
       imm31_0 : out STD_LOGIC_vector(31 downto 0);
       A : out STD_LOGIC_VECTOR (31 downto 0);
       B : out STD_LOGIC_VECTOR (31 downto 0);
       C : out STD_LOGIC_VECTOR (31 downto 0);
       wb : out STD_LOGIC_VECTOR (31 downto 0));
end component;

signal clk : STD_LOGIC;
signal imem_in : STD_LOGIC_vector(511 downto 0) := "0000000010000000000000010010011" &
                         "0000001010100000000000010010011" &
                         "0000000001000000000000010000011" &
                         "111111111010000001000001001011" &
                         "00000000011000010100011000011" &
                         X"00000000000000000000000000000000" &
                         X"00000000000000000000000000000000" &
                         X"00000000000000000000000000000000";

signal D : STD_LOGIC_VECTOR (31 downto 0);
signal Addr : STD_LOGIC_VECTOR(31 downto 0);
signal DataW : STD_LOGIC_VECTOR(31 downto 0);
signal imm31_0 : STD_LOGIC_VECTOR (31 downto 0);
signal A : STD_LOGIC_VECTOR (31 downto 0);
signal B : STD_LOGIC_VECTOR (31 downto 0);
signal C : STD_LOGIC_VECTOR (31 downto 0);
signal wb : STD_LOGIC_VECTOR (31 downto 0);
constant clk_period : time := 10 ns;

begin

MRTB : RISCV_TOP_BONUS
port map ( clk => clk,
           imem_in => imem_in,
           D => D,
           Addr => Addr,
           DataW => DataW,
           imm31_0 => imm31_0,
           A => A,
           B => B,
           C => C,
           wb => wb);

clk_process : process
begin
    clk <= '1';
    wait for clk_period;
    clk <= '0';
    wait for clk_period;
end process;

RISCV_process_code2 : process
begin
    wait for 160 ns;
    report "Simulation finished at 160ns.";
    assert false report "End of simulation." severity failure;
end process;

end Behavioral;
