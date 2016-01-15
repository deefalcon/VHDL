

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity phase3 is
   port (KEY: in std_logic_vector(3 downto 0);
         SW : in std_logic_vector(17 downto 0);
		 CLOCK_27: in std_logic;
         CLOCK_50: in std_logic;
		 HEX7 : out std_logic_vector(6 downto 0);
		 HEX6 : out std_logic_vector(6 downto 0);
		 HEX5 : out std_logic_vector(6 downto 0);
		 HEX4 : out std_logic_vector(6 downto 0);
		 HEX3 : out std_logic_vector(6 downto 0);
		 HEX2 : out std_logic_vector(6 downto 0);
		 HEX1 : out std_logic_vector(6 downto 0);
		 HEX0 : out std_logic_vector(6 downto 0)
	);     
end phase3;

architecture structural of phase3 is

	component state_machine
      port (clk : in std_logic;   -- clock input
         resetb : in std_logic;   -- active-low reset input
         skip : in std_logic;      -- skip switch value
         hex : out std_logic_vector(6 downto 0)  -- drive digit 0
      );
	end component;
	
	component state_machine_duncan
      port (clk : in std_logic;   -- clock input
         resetb : in std_logic;   -- active-low reset input
         skip : in std_logic;      -- skip switch value
         hex : out std_logic_vector(6 downto 0)  -- drive digit 0
      );
	end component;
   
	component LED_blanker
	  port (hex: out std_logic_vector(6 downto 0));
	end component;
	
	component counter_8bit
	   port (clk: in std_logic;
				 count_target: in std_logic_vector(7 downto 0);
				 q: out std_logic
	   );
	end component;
	
	component mux_7x2x1
		port (sel: in std_logic;
				input_A: in std_logic_vector(6 downto 0);
				input_B: in std_logic_vector(6 downto 0);
				output_Y: out std_logic_vector(6 downto 0)
		);
	end component;

   -- These two signals are used in the clock divider (see below).
   -- slow_clock is the output of the clock divider, and count50 is
   -- an internal signal used within the clock divider.
	
   signal slow_clock_27 : std_logic;
   signal slow_clock_50 : std_logic;
   signal variable_clock_27 : std_logic;
   signal variable_clock_50 : std_logic;
   signal count27 : unsigned(18 downto 0) := (others => '0');
   signal count50 : unsigned(18 downto 0) := (others => '0');
   signal display_sacha_27 : std_logic_vector(6 downto 0) := (others => '0');
   signal display_sacha_50 : std_logic_vector(6 downto 0) := (others => '0');
   signal display_duncan_27 : std_logic_vector(6 downto 0) := (others => '0');
   signal display_duncan_50 : std_logic_vector(6 downto 0) := (others => '0');

   -- Note: the above syntax (others=>'0') is a short cut for initializing
   -- all bits in this 26 bit wide bus to 0. 

begin

	PROCESS (CLOCK_27)	
    BEGIN
        if rising_edge (CLOCK_27) THEN 
            count27 <= count27 + 1;
        end if;
    END process;
    slow_clock_27 <= count27(18);
	
    PROCESS (CLOCK_50)	
    BEGIN
        if rising_edge (CLOCK_50) THEN 
            count50 <= count50 + 1;
        end if;
    END process;
    slow_clock_50 <= count50(18);
	
	u8: counter_8bit port map(slow_clock_27, SW(17 downto 10), variable_clock_27);
	u9: counter_8bit port map(slow_clock_50, SW(9 downto 2), variable_clock_50);
	
	u10: state_machine_duncan port map(variable_clock_27, KEY(0), SW(1), display_duncan_27(6 downto 0));
	u11: state_machine_duncan port map(variable_clock_50, KEY(0), SW(0), display_duncan_50(6 downto 0));
	
	u12: mux_7x2x1 port map(KEY(1), display_sacha_27, display_duncan_27, HEX1);
	u13: mux_7x2x1 port map(KEY(1), display_sacha_50, display_duncan_50, HEX0);
	
    u0: state_machine port map(variable_clock_27, KEY(0), SW(1), display_sacha_27(6 downto 0));									
	u1: state_machine port map(variable_clock_50, KEY(0), SW(0), display_sacha_50(6 downto 0));
										
	u2: LED_blanker port map(HEX2);
	u3: LED_blanker port map(HEX3);
	u4: LED_blanker port map(HEX4);
	u5: LED_blanker port map(HEX5);
	u6: LED_blanker port map(HEX6);
	u7: LED_blanker port map(HEX7);
	
end structural;
