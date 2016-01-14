--@author: Max Prokopenko
--@date: Jan 13, 2016
--@brief: Toggles output on reaching 8-bit input value

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_8bit is
   port (clk: in std_logic;
         count_target: in std_logic_vector(7 downto 0);
         q: out std_logic
   );
end counter_8bit;

architecture behavioural of counter_8bit is
	signal q_internal : std_logic := '0';
	signal count : unsigned(8 downto 0) := (others => '0');
	signal count_target_conversion : unsigned(8 downto 0) := (others => '0');
begin

	process(count_target)
	begin
		
		count_target_conversion <= unsigned('0' & count_target(7 downto 0));
		
	end process;
		
  process(clk)
  begin 

	if rising_edge(clk) then 
		count <= count + 1;
		if(count > count_target_conversion) then
			count <= to_unsigned(0, count'length);
			if(q_internal = '0') then
				q_internal <= '1';
			else
				q_internal <= '0';
			end if;
		end if;
	end if;
	
	q <= q_internal;
      
  end process;
end behavioural;

