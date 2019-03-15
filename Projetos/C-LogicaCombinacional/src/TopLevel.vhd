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
use ieee.STD_LOGIC_ARITH.all;
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
		HEX4    : out std_logic_vector(6 downto 0); -- 7seg4
<<<<<<< HEAD
		HEX5    : out std_logic_vector(6 downto 0); -- 7seg5
=======
		HEX5    : out std_logic_vector(6 downto 0) -- 7seg5
>>>>>>> 725c6ad7edf5348dc2b2f7db1da0522b54456566
	);
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
	
	function Number(X : integer)
              return std_logic_vector is
		begin
		if (X=0) then
			return n0;
		elsif(X=1) then
			return n1;
		elsif(X=2) then
			return n2;
		elsif(X=3) then
			return n3;
		elsif(X=4) then
			return n4;
		elsif(X=5) then
			return n5;
		elsif(X=6) then
			return n6;
		elsif(X=7) then
			return n7;
		elsif(X=8) then
			return n8;
		elsif(X=9) then
			return n9;
		elsif(X=10) then
			return a;
		elsif(X=11) then
			return b;
		elsif(X=12) then
			return c;
		elsif(X=13) then
			return d;
		elsif(X=14) then
			return e;
		else
			return f;
		end if;
	end Number;
	
	function Inte(X : std_logic)
              return integer is
		begin
		if (X='1') then
			return 1;
		else 
			return 0;
		end if;
	end Inte;
	
	signal s0:integer;
	signal s1:integer;
	signal s2:integer;
	signal s3:integer;
	signal s4:integer;
	signal s5:integer;
	signal s6:integer;
	signal s7:integer;
	signal s8:integer;
	signal s9:integer;
	signal os0:integer;
	signal rs0:integer;
	signal os1:integer;
	signal rs1:integer;
	signal os2:integer;
	signal rs2:integer;
	signal os3:integer;
	signal rs3:integer;
	
	

-- This line demonstrates the signed case

end entity;

----------------------------
-- Implementacao do bloco --
----------------------------
architecture rtl of TopLevel is

<<<<<<< HEAD
--------------
-- signals
--------------

---------------
-- implementacao
---------------
		  
begin
	with SW(0) select
		HEX0 <= "0000001" when '0',
			"1001111" when others;
=======
  
begin

s0<=Inte(SW(0));
s1<=Inte(SW(1));
s2<=Inte(SW(2));
s3<=Inte(SW(3));
s4<=Inte(SW(4));
s5<=Inte(SW(5));
s6<=Inte(SW(6));
s7<=Inte(SW(7));
s8<=Inte(SW(8));
s9<=Inte(SW(9));

os0<=s0+s1*2+s2*4+s3*8+s4*16+s5*32+s6*64+s7*128+s8*256+s9*512;
rs0<=(os0 rem 10);
HEX0 <=Number(rs0);

os1<=(os0-rs0)/10;
rs1<=(os1 rem 10);
HEX1 <=Number(rs1);

os2<=(os1-rs1)/10;
rs2<=(os2 rem 10);
HEX2 <=Number(rs2);

os3<=(os2-rs2)/10;
rs3<=(os3 rem 10);
HEX3 <=Number(rs3);

HEX4<=none;

HEX5<=none;

>>>>>>> 725c6ad7edf5348dc2b2f7db1da0522b54456566
end rtl;
