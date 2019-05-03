library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MemoryIO is
   PORT(
     -- Sistema
     CLK_SLOW : IN  STD_LOGIC;
     CLK_FAST : IN  STD_LOGIC;
     RST      : IN  STD_LOGIC;

     -- RAM 16K
     ADDRESS  : IN  STD_LOGIC_VECTOR (14 DOWNTO 0);
     INPUT		: IN  STD_LOGIC_VECTOR (15 DOWNTO 0);
     LOAD	  	: IN  STD_LOGIC ;
     OUTPUT		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0);

     -- LCD EXTERNAL I/OS
     LCD_CS_N     : OUT   STD_LOGIC;
     LCD_D        : INOUT STD_LOGIC_VECTOR(15 downto 0);
     LCD_RD_N     : OUT   STD_LOGIC;
     LCD_RESET_N  : OUT   STD_LOGIC;
     LCD_RS       : OUT   STD_LOGIC;
     LCD_WR_N     : OUT   STD_LOGIC;
     LCD_ON       : OUT   STD_LOGIC := '1';	-- liga e desliga o LCD
     LCD_INIT_OK  : OUT   STD_LOGIC;

     -- I/Os
     SW  : in std_logic_vector(9 downto 0);
     LED : OUT std_logic_vector(9 downto 0)

		);
end entity;


ARCHITECTURE logic OF MemoryIO IS


  component Screen is
    PORT(
      -- Sistema
      CLK_FAST : IN  STD_LOGIC;
      CLK_SLOW : IN  STD_LOGIC;
      RST 	   : IN  STD_LOGIC;

      -- interface
      INPUT        : IN STD_LOGIC_VECTOR(15 downto 0); -- vetor de pxs
      LOAD         : IN  STD_LOGIC;                    -- grava dado
      ADDRESS      : IN STD_LOGIC_VECTOR(13 downto 0); -- endereço

      -- LCD EXTERNAL I/OS
      LCD_INIT_OK  : OUT STD_LOGIC;
      LCD_CS_N     : OUT   STD_LOGIC;
      LCD_D        : INOUT STD_LOGIC_VECTOR(15 downto 0);
      LCD_RD_N     : OUT   STD_LOGIC;
      LCD_RESET_N  : OUT   STD_LOGIC;
      LCD_RS       : OUT   STD_LOGIC;
      LCD_WR_N     : OUT   STD_LOGIC);
  end component;

  component RAM16K is
    port  (
      clock		: IN STD_LOGIC;
      address	: IN STD_LOGIC_VECTOR (13 DOWNTO 0);
      data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      wren		: IN STD_LOGIC;
      q		   : OUT STD_LOGIC_VECTOR (15 DOWNTO 0));
  end component;

  component Mux4Way16 is
    Port (
      sel : in  STD_LOGIC_VECTOR ( 1 downto 0);
      a   : in  STD_LOGIC_VECTOR (15 downto 0);
      b   : in  STD_LOGIC_VECTOR (15 downto 0);
      c   : in  STD_LOGIC_VECTOR (15 downto 0);
      d   : in  STD_LOGIC_VECTOR (15 downto 0);
      q   : out STD_LOGIC_VECTOR (15 downto 0));
  end component;

  component Register16 is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(15 downto 0);
		load:    in STD_LOGIC;
		output: out STD_LOGIC_VECTOR(9 downto 0)
	);

  entity DMux4Way is
  	port (
  			a:   in  STD_LOGIC;
  			sel: in  STD_LOGIC_VECTOR(1 downto 0);
  			q0:  out STD_LOGIC;
  			q1:  out STD_LOGIC;
  			q2:  out STD_LOGIC;
  			q3:  out STD_LOGIC);
  end entity;

  SIGNAL dmuxOut_1, dmuxOut_2, dmuxOut_3, dmuxOut_4: STD_LOGIC;
  SIGNAL ram16_out, mux_out: STD_LOGIC_VECTOR(15 DOWNTO 0);
  SIGNAL reg16_out: STD_LOGIC_VECTOR( 9 DOWNTO 0);
  SIGNAL out_lcd_d: STD_LOGIC_VECTOR(15 downto 0);
  SIGNAL out_lcd_init_ok, out_lcd_cs_n, out_lcd_rd_n, out_lcd_reset_n, out_lcd_rs, out_lcd_wr_n:  STD_LOGIC;

begin

  selec <= "00" when ADDRESS >= "000000000000000" and ADDRESS <= "011111111111111" else "10" when ADDRESS >= "100000000000000" and ADDRESS <= "101001010111110" else "01" when ADDRESS >= "0101001010111111" and ADDRESS <= "101001011000000" else "00";

  dmux: DMux4Way port map(LOAD, selec, dmuxOut_1, dmuxOut_2, dmuxOut_3, dmuxOut_4);
  ram: RAM16K port map(CLK_FAST, ADDRESS, INPUT, dmuxOut_1, ram16_out);
  mux: Mux4Way16 port map("00", SW, ram16_out, "0000000000000000", "0000000000000000", mux_out);
  reg: Register16 port map(CLK_SLOW, INPUT, dmuxOut_2, reg16_out);
  scr: Screen port map(CLK_FAST, CLK_SLOW, RST, INPUT, dmuxOut_3, ADDRESS, out_lcd_init_ok, out_lcd_cs_n, out_lcd_d, out_lcd_rd_n, out_lcd_reset_n, out_lcd_rs, out_lcd_wr_n);

  OUTPUT      <= mux_out;
  LED         <= reg16_out;
  LCD_INIT_OK <= out_lcd_init_ok;
  LCD_CS_N 	  <= out_lcd_cs_n;
  LCD_D       <= out_lcd_d;
  LCD_RD_N 	  <= out_lcd_rd_n;
  LCD_RESET_N <= out_lcd_reset_n;
  LCD_RS 	    <= out_lcd_rs;
  LCD_WR_N 	  <= out_lcd_wr_n;



-----------------------------------
-- Dicas de uso, screen e RAM16k --
-----------------------------------

--    DISPLAY: Screen  port map (
--          RST         => RST,
--          CLK_FAST    => CLK_FAST,
--          CLK_SLOW    => CLK_SLOW,
--          INPUT       =>
--          LOAD        =>
--          ADDRESS     =>
--          LCD_INIT_OK => LCD_INIT_OK,
--          LCD_CS_N 	  => LCD_CS_N,
--          LCD_D       => LCD_D,
--          LCD_RD_N 	  => LCD_RD_N,
--          LCD_RESET_N => LCD_RESET_N,
--          LCD_RS 	    => LCD_RS,
--          LCD_WR_N 	  => LCD_WR_N
--    );


--    RAM: RAM16K  PORT MAP(
--         clock		=> CLK_FAST,
--         address  =>
--         data		  =>
--         wren		  =>
--         q		    =>
--    );

END logic;
