--------------------------------------------------------
--
--  This is the top-level file for Lab 1 Phase 3.  This
--  file provides a connection between the switch and light
--  pins and the pins of the lower-level module.  This file
--  also contains a clock divider that steps down a 50Mhz
--  clock.
--  
--  You can use this file directly.  There is nothing you have
--  to add to this file for Phase 3.
--
--------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--------------------------------------------------------
--
--  This is the entity part of the top level file for Phase 3.
--  The inputs are named to match the names of specific I/O
--  pins as described in the pin assignments file. 
--  
----------------------------------------------------------

entity phase3 is
   port (KEY: in std_logic_vector(3 downto 0);  -- push-button switches
         SW : in std_logic_vector(17 downto 0);  -- slider switches
		 CLOCK_27: in std_logic;
         CLOCK_50: in std_logic;                 -- 50MHz clock input
		 HEX7 : out std_logic_vector(6 downto 0);
		 HEX6 : out std_logic_vector(6 downto 0);
		 HEX5 : out std_logic_vector(6 downto 0);
		 HEX4 : out std_logic_vector(6 downto 0);
		 HEX3 : out std_logic_vector(6 downto 0);
		 HEX2 : out std_logic_vector(6 downto 0);
		 HEX1 : out std_logic_vector(6 downto 0);
		 HEX0 : out std_logic_vector(6 downto 0));     
end phase3;

------------------------------------------------------------
--
-- This is the architecture part of the top level file for Phase 3.
-- This file includes your lower level state machine, and wires up the
-- input and output pins to your state machine.
--
-------------------------------------------------------------

architecture structural of phase3 is

   -- declare the state machine component (think of this as a header
   -- specification in C).  This has to match the entity part of your
   -- state machine entity (from state_machine.vhd) exactly.  If you
   -- add pins to state_machine, they need to be reflected here

	component state_machine
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

   -- These two signals are used in the clock divider (see below).
   -- slow_clock is the output of the clock divider, and count50 is
   -- an internal signal used within the clock divider.
	
   signal slow_clock_27 : std_logic;
   signal slow_clock_50 : std_logic;
   signal variable_clock_27 : std_logic;
   signal variable_clock_50 : std_logic;
   signal count27 : unsigned(18 downto 0) := (others => '0');
   signal count50 : unsigned(18 downto 0) := (others => '0');

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
	
    u0: state_machine port map(variable_clock_27,  -- the clock input to the state machine
                                            -- is the slow clock
                               KEY(0),  -- the reset input to the state machine is
                                        -- pushbutton # 0
                               SW(1),   -- the skip input to the state machine is
                                        -- slider switch # 0,
                               HEX1);	-- the output of the state machine is connected
                                        -- to hex digit 0
										
	u1: state_machine port map(variable_clock_50,  -- the clock input to the state machine
                                            -- is the slow clock
                               KEY(0),  -- the reset input to the state machine is
                                        -- pushbutton # 0
                               SW(0),   -- the skip input to the state machine is
                                        -- slider switch # 0,
                               HEX0);	-- the output of the state machine is connected
                                        -- to hex digit 0
										
	u2: LED_blanker port map(HEX2);
	u3: LED_blanker port map(HEX3);
	u4: LED_blanker port map(HEX4);
	u5: LED_blanker port map(HEX5);
	u6: LED_blanker port map(HEX6);
	u7: LED_blanker port map(HEX7);
	
end structural;
