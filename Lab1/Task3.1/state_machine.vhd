--------------------------------------------------------
--
--  This is the skeleton file for Lab 1 Phase 3.  You should
--  start with this file when you describe your state machine.  
--  
--------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

--------------------------------------------------------
--
--  This is the entity part of the top level file for Phase 3.
--  The entity part declares the inputs and outputs of the
--  module as well as their types.  For now, a signal of
--  “std_logic” type can take on the value ‘0’ or ‘1’ (it
--  can actually do more than this).  A signal of type
--  std_logic_vector can be thought of as an array of 
--  std_logic, and is used to describe a bus (a parallel 
--  collection of wires).
--
--  Note: you don't have to change the entity part.
--  
----------------------------------------------------------

entity state_machine is
   port (clk : in std_logic;  -- clock input to state machine
         resetb : in std_logic;  -- active-low reset input
         skip : in std_logic;     -- skip input
         hex0 : out std_logic_vector(6 downto 0)  -- output of state machine
            -- Note that in the above, hex0 is a 7-bit wide bus
            -- indexed using indices 6, 5, 4 ... down to 0.  The
            -- most-significant bit is hex(6) and the least significant
            -- bit is hex(0)
   );
end state_machine;

----------------------------------------------------------------
--
-- The following is the architecture part of the state machine.  It 
-- describes the behaviour of the state machine using synthesizable
-- VHDL.  
--
----------------------------------------------------------------- 

architecture behavioural of state_machine is
signal next_state, current_state : std_logic_vector(2 downto 0);	
begin
  
   process(all)
   begin
     
      --using SACHA as name
      
      case current_state is
        
        when "000" => 
          if (skip = '1') then
            next_state <= "010";
          else
            next_state <= "001";
          end if;
		  hex0 <= "0010010";
        
        when "001" => 
          if (skip = '1') then
            next_state <= "011";
          else
            next_state <= "010";
          end if;
		  hex0 <= "0001000";
        
        when "010" => 
          if (skip = '1') then
            next_state <= "100";
          else
            next_state <= "011";
          end if;
		  hex0 <= "1000110";
          
        when "011" => 
          if (skip = '1') then
            next_state <= "000";
          else
            next_state <= "100";
          end if;
		  hex0 <= "0001001";
          
        when "100" => 
          if (skip = '1') then
            next_state <= "001";
          else
            next_state <= "000";
          end if;
          hex0 <= "0001000";
          
        when others => next_state <= "000";
      end case;

   end process;

--	process(resetb)
--	begin
--		if(resetb = '0') then
--			current_state <= "000";
--		end if;
--	end process;
--	 
   process(clk)
   begin 
      if rising_edge(clk) then 
         current_state <= next_state;
      end if;
   end process;
	
end behavioural;

