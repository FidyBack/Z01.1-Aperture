library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DMux4Way is
	port ( 
			a:   in  STD_LOGIC;
			sel: in  STD_LOGIC_VECTOR(1 downto 0);
			q0:  out STD_LOGIC;
			q1:  out STD_LOGIC;
			q2:  out STD_LOGIC;
			q3:  out STD_LOGIC);
end entity;

architecture rtl of DMux4Way is
begin

<<<<<<< HEAD
process(a,q0,q1,q2,q3,sel)
begin

	case sel is
		when "00" => q0 <= a;
		when "01" => q1 <= a;
		when "10" => q2 <= a;
		when others => q3 <= a;
	end case;
	

end process;
=======
>>>>>>> 6d2fb8c8b92e1a72f32b9f09c24100ca85627c7d
end architecture;

