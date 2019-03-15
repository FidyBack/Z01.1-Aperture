Library ieee;
use ieee.std_logic_1164.all;

entity HalfAdder is
	port(
		a,b:         in STD_LOGIC;   -- entradas
		soma,vaium: out STD_LOGIC   -- sum e carry
	);
end entity;

architecture rtl of HalfAdder is

begin
<<<<<<< HEAD

	soma <= (not(a) and b) or (a and not (b));
=======
	soma <= (not(a) and b) or (not(b) and a);
>>>>>>> 99a773017b4422576a9e9298c75966d13bd27357
	vaium <= a and b;

end architecture;
