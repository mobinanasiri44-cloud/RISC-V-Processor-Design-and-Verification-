library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity help6 is
    Port ( 
           INST      : in STD_LOGIC_VECTOR (31 downto 0);
           inst11_7  : in STD_LOGIC_VECTOR (4 downto 0);
           inst19_15 : in STD_LOGIC_VECTOR (4 downto 0);
           inst24_20 : in STD_LOGIC_VECTOR (4 downto 0);
           inst31_20 : in STD_LOGIC_VECTOR (31 downto 0);
           
           Addr      : in STD_LOGIC_VECTOR (31 downto 0);
           DataW     : in STD_LOGIC_VECTOR (31 downto 0);
           clk       : in STD_LOGIC;
           MemRW     : in STD_LOGIC;
           WBSel     : in STD_LOGIC;
           
           C         : out STD_LOGIC_VECTOR (31 downto 0);
           wb        : out STD_LOGIC_VECTOR (31 downto 0);
           D         : out STD_LOGIC_VECTOR (31 downto 0);
           RegWEn    : out STD_LOGIC
           );
end help6;

architecture Behavioral of help6 is

    component RegisterFile is
        Port ( wb        : in  STD_LOGIC_VECTOR (31 downto 0);
               inst11_7  : in  STD_LOGIC_VECTOR (4 downto 0);
               inst19_15 : in  STD_LOGIC_VECTOR (4 downto 0);
               inst24_20 : in  STD_LOGIC_VECTOR (4 downto 0);
               clk       : in  STD_LOGIC;
               RegWEn    : in  STD_LOGIC;
               A         : out STD_LOGIC_VECTOR (31 downto 0);
               B         : out STD_LOGIC_VECTOR (31 downto 0);
               D         : out STD_LOGIC_VECTOR (31 downto 0);
               INST      : in  STD_LOGIC_VECTOR (31 downto 0));
    end component;

    component help5 is
        Port ( INST      : in  STD_LOGIC_VECTOR (31 downto 0);
               inst31_20 : in  STD_LOGIC_VECTOR (31 downto 0);
               A         : in  STD_LOGIC_VECTOR (31 downto 0);
               B         : in  STD_LOGIC_VECTOR (31 downto 0);
               Addr      : in  STD_LOGIC_VECTOR (31 downto 0);
               DataW     : in  STD_LOGIC_VECTOR (31 downto 0);
               clk       : in  STD_LOGIC;
               MemRW     : in  STD_LOGIC;
               WBSel     : in  STD_LOGIC;
               C         : out STD_LOGIC_VECTOR (31 downto 0);
               wb        : out STD_LOGIC_VECTOR (31 downto 0);
               RegWEn    : out STD_LOGIC);
    end component;

    signal sig_A        : STD_LOGIC_VECTOR (31 downto 0);
    signal sig_B        : STD_LOGIC_VECTOR (31 downto 0);
    signal sig_wb       : STD_LOGIC_VECTOR (31 downto 0);
    signal sig_RegWEn   : STD_LOGIC;
    signal sig_C        : STD_LOGIC_VECTOR (31 downto 0);

begin

    Reg_File : RegisterFile
    port map ( 
               wb        => sig_wb,
               inst11_7  => inst11_7,
               inst19_15 => inst19_15,
               inst24_20 => inst24_20,
               clk       => clk,
               RegWEn    => sig_RegWEn,
               A         => sig_A,
               B         => sig_B,
               D         => D,
               INST      => INST
    );

    H5 : help5
    port map ( 
               INST      => INST,
               inst31_20 => inst31_20,
               A         => sig_A,
               B         => sig_B,
               Addr      => Addr,
               DataW     => DataW,
               clk       => clk,
               MemRW     => MemRW,
               WBSel     => WBSel,
               C         => sig_C,
               wb        => sig_wb,
               RegWEn    => sig_RegWEn
    );

    C      <= sig_C;
    wb     <= sig_wb;
    RegWEn <= sig_RegWEn;

end Behavioral;
