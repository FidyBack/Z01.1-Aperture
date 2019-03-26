-- Elementos de Sistemas
-- by Luciano Soares
-- Register8.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity Register8 is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(7 downto 0);
		load:    in STD_LOGIC;
		output: out STD_LOGIC_VECTOR(7 downto 0)
	);
end entity;

architecture arch of Register8 is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.]


  component BinaryDigit is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC;
		load:    in STD_LOGIC;
		output: out STD_LOGIC
	);

end entity;

begin


Register1: BinaryDigit port map (clock=> clock, input=>input(0), load=>load, y=>output(0));
Register2: BinaryDigit port map (clock=> clock, input=>input(1), load=>load, y=>output(1));
Register3: BinaryDigit port map (clock=> clock, input=>input(2), load=>load, y=>output(3));
Register4: BinaryDigit port map (clock=> clock, input=>input(3), load=>load, y=>output(3));
Register5: BinaryDigit port map (clock=> clock, input=>input(4), load=>load, y=>output(4));
Register6: BinaryDigit port map (clock=> clock, input=>input(5), load=>load, y=>output(5));
Register7: BinaryDigit port map (clock=> clock, input=>input(6), load=>load, y=>output(6));
Register8: BinaryDigit port map (clock=> clock, input=>input(7), load=>load, y=>output(7));

end architecture;
