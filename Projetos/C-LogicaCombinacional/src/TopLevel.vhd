--
-- Elementos de Sistemas - Aula 5 - Logica Combinacional
-- Rafael . Corsi @ insper . edu . br 
--
-- Arquivo exemplo para acionar os LEDs e ler os bottoes
-- da placa DE0-CV utilizada no curso de elementos de 
-- sistemas do 3s da eng. da computacao

----------------------------
-- Bibliotecas ieee       --
----------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

----------------------------
-- Entrada e saidas do bloco
----------------------------
entity TopLevel is
	port(
		SW      : in  std_logic_vector(9 downto 0);
		HEX0    : out std_logic_vector(6 downto 0); -- 7seg0
		HEX1    : out std_logic_vector(6 downto 0); -- 7seg1
		HEX2    : out std_logic_vector(6 downto 0) -- 7seg2
	);
	
end entity;

----------------------------
-- Implementacao do bloco --
----------------------------
architecture rtl of TopLevel is
constant none : std_logic_vector(6 downto 0) := ('1','1','1','1','1','1','1');
constant n0 : std_logic_vector(6 downto 0) := ('1','0','0','0','0','0','0');
constant n1 : std_logic_vector(6 downto 0) := ('1','1','1','1','0','0','1');
constant n2 : std_logic_vector(6 downto 0) := ('0','1','0','0','1','0','0');
constant n3 : std_logic_vector(6 downto 0) := ('0','1','1','0','0','0','0');
constant n4 : std_logic_vector(6 downto 0) := ('0','0','1','1','0','0','1');
constant n5 : std_logic_vector(6 downto 0) := ('0','0','1','0','0','1','0');
constant n6 : std_logic_vector(6 downto 0) := ('0','0','0','0','0','1','0');
constant n7 : std_logic_vector(6 downto 0) := ('1','1','1','1','0','0','0');
constant n8 : std_logic_vector(6 downto 0) := ('0','0','0','0','0','0','0');
constant n9 : std_logic_vector(6 downto 0) := ('0','0','1','0','0','0','0');
constant a : std_logic_vector(6 downto 0) := ('0','0','0','1','0','0','0');
constant b : std_logic_vector(6 downto 0) := ('0','0','0','0','0','1','1');
constant c : std_logic_vector(6 downto 0) := ('1','0','0','0','1','1','0');
constant d : std_logic_vector(6 downto 0) := ('0','1','0','0','0','0','1');
constant e : std_logic_vector(6 downto 0) := ('0','0','0','0','1','1','0');
constant f : std_logic_vector(6 downto 0) := ('0','0','0','1','1','1','0');

begin
	
	HEX0 <= 
		n0 when SW(0) = '0' and SW(1) = '0' and SW(2) = '0' and SW(3) = '0' else
		n1 when SW(0) = '1' and SW(1) = '0' and SW(2) = '0' and SW(3) = '0' else
		n2 when SW(0) = '0' and SW(1) = '1' and SW(2) = '0' and SW(3) = '0' else
		n3 when SW(0) = '1' and SW(1) = '1' and SW(2) = '0' and SW(3) = '0' else
		n4 when SW(0) = '0' and SW(1) = '0' and SW(2) = '1' and SW(3) = '0' else
		n5 when SW(0) = '1' and SW(1) = '0' and SW(2) = '1' and SW(3) = '0' else
		n6 when SW(0) = '0' and SW(1) = '1' and SW(2) = '1' and SW(3) = '0' else
		n7 when SW(0) = '1' and SW(1) = '1' and SW(2) = '1' and SW(3) = '0' else
		n8 when SW(0) = '0' and SW(1) = '0' and SW(2) = '0' and SW(3) = '1' else
		n9 when SW(0) = '1' and SW(1) = '0' and SW(2) = '0' and SW(3) = '1' else
		a when SW(0) = '0' and SW(1) = '1' and SW(2) = '0' and SW(3) = '1' else
		b when SW(0) = '1' and SW(1) = '1' and SW(2) = '0' and SW(3) = '1' else
		c when SW(0) = '0' and SW(1) = '0' and SW(2) = '1' and SW(3) = '1' else
		d when SW(0) = '1' and SW(1) = '0' and SW(2) = '1' and SW(3) = '1' else
		e when SW(0) = '0' and SW(1) = '1' and SW(2) = '1' and SW(3) = '1' else
		f when SW(0) = '1' and SW(1) = '1' and SW(2) = '1' and SW(3) = '1';
		
	HEX1 <= 
		n0 when SW(4) = '0' and SW(5) = '0' and SW(6) = '0' and SW(7) = '0' else
		n1 when SW(4) = '1' and SW(5) = '0' and SW(6) = '0' and SW(7) = '0' else
		n2 when SW(4) = '0' and SW(5) = '1' and SW(6) = '0' and SW(7) = '0' else
		n3 when SW(4) = '1' and SW(5) = '1' and SW(6) = '0' and SW(7) = '0' else
		n4 when SW(4) = '0' and SW(5) = '0' and SW(6) = '1' and SW(7) = '0' else
		n5 when SW(4) = '1' and SW(5) = '0' and SW(6) = '1' and SW(7) = '0' else
		n6 when SW(4) = '0' and SW(5) = '1' and SW(6) = '1' and SW(7) = '0' else
		n7 when SW(4) = '1' and SW(5) = '1' and SW(6) = '1' and SW(7) = '0' else
		n8 when SW(4) = '0' and SW(5) = '0' and SW(6) = '0' and SW(7) = '1' else
		n9 when SW(4) = '1' and SW(5) = '0' and SW(6) = '0' and SW(7) = '1' else
		a when SW(4) = '0' and SW(5) = '1' and SW(6) = '0' and SW(7) = '1' else
		b when SW(4) = '1' and SW(5) = '1' and SW(6) = '0' and SW(7) = '1' else
		c when SW(4) = '0' and SW(5) = '0' and SW(6) = '1' and SW(7) = '1' else
		d when SW(4) = '1' and SW(5) = '0' and SW(6) = '1' and SW(7) = '1' else
		e when SW(4) = '0' and SW(5) = '1' and SW(6) = '1' and SW(7) = '1' else
		f when SW(4) = '1' and SW(5) = '1' and SW(6) = '1' and SW(7) = '1';
		
	HEX2 <= 
		n0 when SW(8) = '0' and SW(9) = '0'else
		n1 when SW(8) = '1' and SW(9) = '0'else
		n2 when SW(8) = '0' and SW(9) = '1'else
		n3 when SW(8) = '1' and SW(9) = '1';

end rtl;
