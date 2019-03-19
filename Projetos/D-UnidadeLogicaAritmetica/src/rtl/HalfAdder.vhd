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
	soma <= (not(a) and b) or (not(b) and a);
=======
	soma <= (not(a) and b) or (a and not (b));
>>>>>>> f2a7338c07a3f29791a30a10f4b063eff54f0914
	vaium <= a and b;


end architecture;
