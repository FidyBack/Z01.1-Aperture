-- Elementos de Sistemas
-- by Luciano Soares
-- Ram8.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity Ram8 is
	port(
		clock:   in  STD_LOGIC;
		input:   in  STD_LOGIC_VECTOR(15 downto 0);
		load:    in  STD_LOGIC;
		address: in  STD_LOGIC_VECTOR( 2 downto 0);
		output:  out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;

architecture arch of ram8 is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.

 component Mux8Way16 is
	port ( 
			a:   in  STD_LOGIC_VECTOR(15 downto 0);
			b:   in  STD_LOGIC_VECTOR(15 downto 0);
			c:   in  STD_LOGIC_VECTOR(15 downto 0);
			d:   in  STD_LOGIC_VECTOR(15 downto 0);
			e:   in  STD_LOGIC_VECTOR(15 downto 0);
			f:   in  STD_LOGIC_VECTOR(15 downto 0);
			g:   in  STD_LOGIC_VECTOR(15 downto 0);
			h:   in  STD_LOGIC_VECTOR(15 downto 0);
			sel: in  STD_LOGIC_VECTOR(2 downto 0);
			q:   out STD_LOGIC_VECTOR(15 downto 0));
end component;

component DMux8Way is
	port ( 
			a:   in  STD_LOGIC;
			sel: in  STD_LOGIC_VECTOR(2 downto 0);
			q0:  out STD_LOGIC;
			q1:  out STD_LOGIC;
			q2:  out STD_LOGIC;
			q3:  out STD_LOGIC;
			q4:  out STD_LOGIC;
			q5:  out STD_LOGIC;
			q6:  out STD_LOGIC;
			q7:  out STD_LOGIC);
end component;

component Register16 is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(15 downto 0);
		load:    in STD_LOGIC;
		output: out STD_LOGIC_VECTOR(15 downto 0)
	);
end component;

signal Q: STD_LOGIC_VECTOR(7 downto 0);

signal OL0, OL1, OL2, OL3, OL4, OL5, OL6, OL7, OutL: STD_LOGIC_VECTOR(15 downto 0); 

begin

DMux: DMux8Way port map(load, address, Q(0), Q(1), Q(2),Q(3), Q(4), Q(5), Q(6), Q(7));

Reg16: Register16 port map(clock, input, load, OutL);

OL0 <= OutL when q(0) = '1';
OL1 <= OutL when q(1) = '1';
OL2 <= OutL when q(2) = '1';
OL3 <= OutL when q(3) = '1';
OL4 <= OutL when q(4) = '1';
OL5 <= OutL when q(5) = '1';
OL6 <= OutL when q(6) = '1';
OL7 <= OutL when q(7) = '1';

Mux: Mux8Way16 port map(OL0, OL1, OL2, OL3, OL4, OL5, OL6, OL7, address, output);

end architecture;
