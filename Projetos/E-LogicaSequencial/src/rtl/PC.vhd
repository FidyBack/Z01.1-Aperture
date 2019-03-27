
-- Contador de 16bits
-- if (reset[t] == 1) out[t+1] = 0
-- else if (load[t] == 1)  out[t+1] = in[t]
-- else if (inc[t] == 1) out[t+1] = out[t] + 1
-- else out[t+1] = out[t]

library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity PC is
	port(
		clock     : in  STD_LOGIC;
		increment : in  STD_LOGIC;
		load      : in  STD_LOGIC;
		reset     : in  STD_LOGIC;
		input     : in  STD_LOGIC_VECTOR(15 downto 0);
		output    : out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;

architecture arch of PC is

  	component Register16 is
		port(
	  		clock:   in STD_LOGIC;
	  		input:   in STD_LOGIC_VECTOR(15 downto 0);
			load:    in STD_LOGIC;
			output: out STD_LOGIC_VECTOR(15 downto 0)
		);
	end component;

	component Mux16 is
		port ( 
			a:   in  STD_LOGIC_VECTOR(15 downto 0);
			b:   in  STD_LOGIC_VECTOR(15 downto 0);
			sel: in  STD_LOGIC;
			q:   out STD_LOGIC_VECTOR(15 downto 0)
			);
	end component;

	component Inc16 is
		port(
			a   :  in STD_LOGIC_VECTOR(15 downto 0);
			q   : out STD_LOGIC_VECTOR(15 downto 0)
		);
	end component;

	signal outMux1, outMux2, outMux3, outReg, outInc: STD_LOGIC_VECTOR(15 downto 0);

begin

	inc: Inc16 port map(a=>outReg, q=>outInc);
	muxin: Mux16 port map(a=>outReg, b=>outInc, sel=>increment, q=>outMux1);
	muxlo: Mux16 port map(a=>outMux1, b=>input, sel=>load, q=>outMux2);
	muxre: Mux16 port map(a=>outMux2, b=>"0000000000000000", sel=>reset, q=>outMux3);
	reg: Register16 port map(clock=>clock, input=>outMux3, load=>'1', output=>outReg);

	output <= outReg;

end architecture;