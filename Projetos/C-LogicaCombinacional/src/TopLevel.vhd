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
		HEX2    : out std_logic_vector(6 downto 0); -- 7seg2
		HEX3    : out std_logic_vector(6 downto 0); -- 7seg3
<<<<<<< HEAD
		HEX4    : out std_logic_vector(6 downto 0); -- 7seg4
		HEX5    : out std_logic_vector(6 downto 0); -- 7seg5
=======
>>>>>>> f68b0efcb8eaeca55c8d883febb9af1b3d716556
		LEDR    : out std_logic_vector(9 downto 0)
	);
end entity;

----------------------------
-- Implementacao do bloco -- 
----------------------------
architecture rtl of TopLevel is

--------------
-- signals
--------------

---------------
-- implementacao
---------------
		  
begin
<<<<<<< HEAD
  when SW(0) = '0'
   HEX(0) <= '0';
	HEX(1) <= '0';
	HEX(2) <= '0';
	HEX(3) <= '0';
	HEX(4) <= '0';
	HEX(5) <= '0';
	HEX(6) <= '1';
  else
	HEX(0) <= '1';
	HEX(1) <= '0';
	HEX(2) <= '0';
	HEX(3) <= '1';
	HEX(4) <= '1';
	HEX(5) <= '1';
	HEX(6) <= '1';


=======
	HEX0(1) <=SW(0);
	HEX0(4) <=SW(0);
	LEDR(0) <= SW(0);
>>>>>>> f68b0efcb8eaeca55c8d883febb9af1b3d716556
end rtl;
