--@author: Max Prokopenko
--@date: Jan 13, 2016
--@brief: Lab 1 state machine

library ieee;
use ieee.std_logic_1164.all;

entity state_machine_duncan is
   port (clk : in std_logic;  -- clock input to state machine
         resetb : in std_logic;  -- active-low reset input
         skip : in std_logic;     -- skip input
         hex : out std_logic_vector(6 downto 0)  -- output of state machine
   );
end state_machine_duncan;

architecture behavioural of state_machine_duncan is
signal next_state, current_state : std_logic_vector(2 downto 0);	
constant LETTER_S : std_logic_vector(6 downto 0) := "0010010";
constant LETTER_A : std_logic_vector(6 downto 0) := "0001000";
constant LETTER_C : std_logic_vector(6 downto 0) := "1000110";
constant LETTER_H : std_logic_vector(6 downto 0) := "0001000";
constant LETTER_BLANK : std_logic_vector(6 downto 0) := "1111111";
begin

-- Displays my middle name "SACHA" letter by letter
-- Skips every other letter if the 'skip' switch is down
   process(all)
   begin
        
      case current_state is
        
        when "000" => 
          if (skip = '1') then
            next_state <= "010";
          else
            next_state <= "001";
          end if;
		  hex <= LETTER_S;
        
        when "001" => 
          if (skip = '1') then
            next_state <= "011";
          else
            next_state <= "010";
          end if;
		  hex <= LETTER_A;
        
        when "010" => 
          if (skip = '1') then
            next_state <= "100";
          else
            next_state <= "011";
          end if;
		  hex <= LETTER_C;
          
        when "011" => 
          if (skip = '1') then
            next_state <= "000";
          else
            next_state <= "100";
          end if;
		  hex <= LETTER_H;
          
        when "100" => 
          if (skip = '1') then
            next_state <= "001";
          else
            next_state <= "000";
          end if;
          hex <= LETTER_A;
          
        when others => 
          next_state <= "000";
          hex <= LETTER_BLANK;
          
      end case;
   end process;

-- Clocking on rising edge, asynchronous reset
   process(clk, resetb)
   begin 
     
      if (resetb = '0') then
        current_state <= "000";
      elsif rising_edge(clk) then 
        current_state <= next_state;
      end if;
      
   end process;
   
end behavioural;

