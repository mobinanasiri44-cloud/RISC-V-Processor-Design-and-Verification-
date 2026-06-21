library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity help0 is
    Port ( clk : in STD_LOGIC;
           imem_in : in STD_LOGIC_vector(511 downto 0);
           INST : out STD_LOGIC_vector(31 downto 0);
           inst11_7 : out STD_LOGIC_vector(4 downto 0);
           inst19_15 : out STD_LOGIC_vector(4 downto 0);
           inst24_20 : out STD_LOGIC_vector(4 downto 0);
           inst31_20 : out STD_LOGIC_vector(11 downto 0));
end help0;

architecture Behavioral of help0 is

    component PC is
        port ( clk : in STD_LOGIC;
               PCout : out STD_LOGIC_VECTOR(5 downto 0));
    end component;

    component IMEM is
        port ( PCout : in STD_LOGIC_vector(5 downto 0);
               imem_in : in STD_LOGIC_vector(511 downto 0);
               INST : out STD_LOGIC_vector(31 downto 0);
               inst11_7 : out STD_LOGIC_vector(11 downto 7);
               inst19_15 : out STD_LOGIC_vector(19 downto 15);
               inst24_20 : out STD_LOGIC_vector(24 downto 20);
               inst31_20 : out STD_LOGIC_vector(31 downto 20));
    end component;

    signal PCout_sig : STD_LOGIC_VECTOR(5 downto 0);

begin

    H00 : PC
    port map ( clk => clk,
               PCout => PCout_sig
    );

    H01 : IMEM
    port map ( PCout => PCout_sig,
               imem_in => imem_in,
               INST => INST,
               inst11_7 => inst11_7,
               inst19_15 => inst19_15,
               inst24_20 => inst24_20,
               inst31_20 => inst31_20
    );

end Behavioral;
