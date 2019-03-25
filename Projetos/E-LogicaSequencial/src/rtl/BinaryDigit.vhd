-- Elementos de Sistemas
-- by Luciano Soares
-- BinaryDigit.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity BinaryDigit is
	port(
		clock:      in  STD_LOGIC;
		input:      in  STD_LOGIC;
		load:       in  STD_LOGIC;
		output:     out STD_LOGIC
	);
end entity;

architecture rtl of BinaryDigit is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.
  
	component FlipFlopD is 
  		port(
  			clock:  in  STD_LOGIC;
			d:      in  STD_LOGIC;
			clear:  in  STD_LOGIC;
			preset: in  STD_LOGIC;
			q:      out STD_LOGIC
		);
	end component;

	component Mux2Way is
  		port( 
			a:      in  STD_LOGIC;
			b:      in  STD_LOGIC;
			sel:    in  STD_LOGIC;
			q:      out STD_LOGIC
		);
	end component;

	signal outMux: STD_LOGIC; 
	signal outFFD: STD_LOGIC;

begin
	mux: Mux2Way port map(b=>input, a=>outFFD, sel=>load, q=>outMux);
	ffd: FlipFlopD port map(clock=>clock, d=>outMux, clear=>'0', preset=>'0', q=>outFFD);

	output<=outFFD;

end architecture;

