-- Elementos de Sistemas
-- by Luciano Soares
-- Ram64.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity Ram64 is
	port(
		clock:   in  STD_LOGIC;
		input:   in  STD_LOGIC_VECTOR(15 downto 0);
		load:    in  STD_LOGIC;
		address: in  STD_LOGIC_VECTOR( 5 downto 0);
		output:  out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;

architecture arch of Ram64 is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.

  	component Ram8 is 	
	  	port(
			clock:   in  STD_LOGIC;
			input:   in  STD_LOGIC_VECTOR(15 downto 0);
			load:    in  STD_LOGIC;
			address: in  STD_LOGIC_VECTOR( 2 downto 0);
			output:  out STD_LOGIC_VECTOR(15 downto 0)
		);
	end component;

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
			sel: in  STD_LOGIC_VECTOR( 2 downto 0);
			q:   out STD_LOGIC_VECTOR(15 downto 0)
		);
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
			q7:  out STD_LOGIC
		);
	end component;

	signal Q: STD_LOGIC_VECTOR(15 downto 0);
	signal OL0, OL1, OL2, OL3, OL4, OL5, OL6, OL7: STD_LOGIC_VECTOR(15 downto 0);
	signal Dmux0,Dmux1,Dmux2,Dmux3,Dmux4,Dmux5,Dmux6,Dmux7: STD_LOGIC_VECTOR(15 downto 0);

begin

	DMux: DMux8Way port map(a=>load, sel=>address(2 downto 0), q0=>Q(0), q1=>Q(1), q2=>Q(2), q3=>Q(3), q4=>Q(4), q5=>Q(5), q6=>Q(6), q7=>Q(7));

	ram0: Ram8 port map(clock=>clock, input=>input, load=>Q(0), address=>address(2 downto 0), output=>OL0);
	ram1: Ram8 port map(clock=>clock, input=>input, load=>Q(1), address=>address(2 downto 0), output=>OL1);
	ram2: Ram8 port map(clock=>clock, input=>input, load=>Q(2), address=>address(2 downto 0), output=>OL2);
	ram3: Ram8 port map(clock=>clock, input=>input, load=>Q(3), address=>address(2 downto 0), output=>OL3);
	ram4: Ram8 port map(clock=>clock, input=>input, load=>Q(4), address=>address(2 downto 0), output=>OL4);
	ram5: Ram8 port map(clock=>clock, input=>input, load=>Q(5), address=>address(2 downto 0), output=>OL5);
	ram6: Ram8 port map(clock=>clock, input=>input, load=>Q(6), address=>address(2 downto 0), output=>OL6);
	ram7: Ram8 port map(clock=>clock, input=>input, load=>Q(7), address=>address(2 downto 0), output=>OL7);

	Mux:  Mux8Way16 port map(OL0, OL1, OL2, OL3, OL4, OL5, OL6, OL7, address(2 downto 0), output);


end architecture;


