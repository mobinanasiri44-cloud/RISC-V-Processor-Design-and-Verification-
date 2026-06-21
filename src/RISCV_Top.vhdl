library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RISCV_TOP_BONUS is
    Port ( 
           clk      : in  STD_LOGIC;
           imem_in  : in  STD_LOGIC_VECTOR(511 downto 0);
           
           Addr     : in  STD_LOGIC_VECTOR (31 downto 0);
           DataW    : in  STD_LOGIC_VECTOR (31 downto 0);
           MemRW    : in  STD_LOGIC;
           WBSel    : in  STD_LOGIC;
           
           C        : out STD_LOGIC_VECTOR (31 downto 0);
           wb       : out STD_LOGIC_VECTOR (31 downto 0);
           D        : out STD_LOGIC_VECTOR (31 downto 0);
           RegWEn   : out STD_LOGIC;
           INST     : out STD_LOGIC_VECTOR (31 downto 0)
           );
end RISCV_TOP_BONUS;

architecture Behavioral of RISCV_TOP_BONUS is

    component help0 is
        Port ( clk      : in  STD_LOGIC;
               imem_in  : in  STD_LOGIC_vector(511 downto 0);
               INST     : out STD_LOGIC_vector(31 downto 0);
               inst11_7 : out STD_LOGIC_vector(4 downto 0);
               inst19_15: out STD_LOGIC_vector(4 downto 0);
               inst24_20: out STD_LOGIC_vector(4 downto 0);
               inst31_20: out STD_LOGIC_vector(11 downto 0));
    end component;

    component help6 is
        Port ( INST      : in  STD_LOGIC_VECTOR (31 downto 0);
               inst11_7  : in  STD_LOGIC_VECTOR (4 downto 0);
               inst19_15 : in  STD_LOGIC_VECTOR (4 downto 0);
               inst24_20 : in  STD_LOGIC_VECTOR (4 downto 0);
               inst31_20 : in  STD_LOGIC_VECTOR (31 downto 20); -- 12 bits
               Addr      : in  STD_LOGIC_VECTOR (31 downto 0);
               DataW     : in  STD_LOGIC_VECTOR (31 downto 0);
               clk       : in  STD_LOGIC;
               MemRW     : in  STD_LOGIC;
               WBSel     : in  STD_LOGIC;
               C         : out STD_LOGIC_VECTOR (31 downto 0);
               wb        : out STD_LOGIC_VECTOR (31 downto 0);
               D         : out STD_LOGIC_VECTOR (31 downto 0);
               RegWEn    : out STD_LOGIC);
    end component;

    signal INST_sig      : STD_LOGIC_VECTOR (31 downto 0);
    signal inst11_7_sig  : STD_LOGIC_VECTOR (4 downto 0);
    signal inst19_15_sig : STD_LOGIC_VECTOR (4 downto 0);
    signal inst24_20_sig : STD_LOGIC_VECTOR (4 downto 0);
    signal inst31_20_sig : STD_LOGIC_VECTOR (11 downto 0); -- 12-bit immediate bits

begin

    H0 : help0
    port map ( clk      => clk,
               imem_in  => imem_in,
               INST     => INST_sig,
               inst11_7 => inst11_7_sig,
               inst19_15=> inst19_15_sig,
               inst24_20=> inst24_20_sig,
               inst31_20=> inst31_20_sig
    );

    H6 : help6
    port map ( INST      => INST_sig,
               inst11_7  => inst11_7_sig,
               inst19_15 => inst19_15_sig,
               inst24_20 => inst24_20_sig,
               inst31_20 => inst31_20_sig, -- Maps 11..0 of signal to 31..20 of port
               Addr      => Addr,
               DataW     => DataW,
               clk       => clk,
               MemRW     => MemRW,
               WBSel     => WBSel,
               C         => C,
               wb        => wb,
               D         => D,
               RegWEn    => RegWEn
    );

    INST <= INST_sig;

end Behavioral;
