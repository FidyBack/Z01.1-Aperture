library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU is
	port (
			x,y:   in STD_LOGIC_VECTOR(15 downto 0); -- entradas de dados da ALU
			zx:    in STD_LOGIC;                     -- zera a entrada x
			nx:    in STD_LOGIC;                     -- inverte a entrada x
			zy:    in STD_LOGIC;                     -- zera a entrada y
			ny:    in STD_LOGIC;                     -- inverte a entrada y
			f:     in STD_LOGIC;                     -- se 0 calcula x & y, senão x + y
			no:    in STD_LOGIC;                     -- inverte o valor da saída
			sl:    in STD_LOGIC;                     -- coisa nova e divertida (shift left)
			zr:    out STD_LOGIC;                    -- setado se saída igual a zero
			ng:    out STD_LOGIC;                    -- setado se saída é negativa
			saida: out STD_LOGIC_VECTOR(15 downto 0) -- saída de dados da ALU
	);
end entity;

architecture  rtl OF alu is
	signal outzx : std_logic_vector(15 downto 0);
	signal outzy : std_logic_vector(15 downto 0);
	
	component zerador16 IS
		port(z   : in STD_LOGIC;
			 a   : in STD_LOGIC_VECTOR(15 downto 0);
			 y   : out STD_LOGIC_VECTOR(15 downto 0)
			);
	end component;

	component inversor16 is
		port(z   : in STD_LOGIC;
			 a   : in STD_LOGIC_VECTOR(15 downto 0);
			 y   : out STD_LOGIC_VECTOR(15 downto 0)
		);
	end component;

	component Add16 is
		port(
			a   :  in STD_LOGIC_VECTOR(15 downto 0);
			b   :  in STD_LOGIC_VECTOR(15 downto 0);
			q   : out STD_LOGIC_VECTOR(15 downto 0)
		);
	end component;

	component And16 is
		port (
			a:   in  STD_LOGIC_VECTOR(15 downto 0);
			b:   in  STD_LOGIC_VECTOR(15 downto 0);
			q:   out STD_LOGIC_VECTOR(15 downto 0)
		);
	end component;

	component comparador16 is
		port(
			a   : in STD_LOGIC_VECTOR(15 downto 0);
			zr   : out STD_LOGIC;
			ng   : out STD_LOGIC
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


   SIGNAL zxout,zyout,nxout,nyout,andout,adderout,muxout,invout,precomp: std_logic_vector(15 downto 0);

begin

zerax: zerador16 port map (z=> zx, a=>x, y=>zxout);
zeray: zerador16 port map (z=> zy, a=>y, y=>zyout);
invex: inversor16 port map (z=> nx, a=>zxout, y=>nxout);
invey: inversor16 port map (z=> ny, a=>zyout, y=>nyout);
add: Add16 port map (a=>nxout, b=>nyout, q=>adderout);
Aand: and16 port map (a=>nxout, b=>nyout, q=>andout);
mux: mux16 port map (sel=>f, a=>andout, b=>adderout, q=>muxout);
inver: inversor16 port map (z=> no, a=>muxout, y=>precomp);

comparator: comparador16 port map(a=>precomp,zr=>Zr,ng=>Ng);

saida <= precomp;
end architecture;


