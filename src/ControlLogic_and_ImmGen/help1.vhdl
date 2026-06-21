library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity help1 is
    Port ( INST : in STD_LOGIC_VECTOR(31 downto 0);
           inst31_20 : in STD_LOGIC_VECTOR (31 downto 20);
           imm31_0 : out STD_LOGIC_VECTOR (31 downto 0);
           RegWEn : out STD_LOGIC;
           BSel : out STD_LOGIC;
           ALUSel : out STD_LOGIC_VECTOR (1 downto 0));
end help1;

architecture Behavioral of help1 is

    component ControlLogic is
        port ( INST : in STD_LOGIC_VECTOR(31 downto 0);
               RegWEn : out STD_LOGIC;
               ImmSel : out STD_LOGIC;
               BSel : out STD_LOGIC;
               ALUSel : out STD_LOGIC_VECTOR (1 downto 0));
    end component;

    component ImmGen is
        port ( inst31_20 : in STD_LOGIC_VECTOR (31 downto 20);
               ImmSel : in STD_LOGIC;
               imm31_0 : out STD_LOGIC_VECTOR (31 downto 0));
    end component;

    signal ImmSel_sig : STD_LOGIC;

begin

    H30 : ControlLogic
    port map ( INST => INST,
               RegWEn => RegWEn,
               ImmSel => ImmSel_sig,
               BSel => BSel,
               ALUSel => ALUSel
    );

    H31 : ImmGen
    port map ( inst31_20 => inst31_20,
               ImmSel => ImmSel_sig,
               imm31_0 => imm31_0
    );

end Behavioral;
