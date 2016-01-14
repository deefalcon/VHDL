--@author: Max Prokopenko
--@date: Jan 13, 2016
--@brief: Sets a 7-bit logic vector output to all high

library ieee;
use ieee.std_logic_1164.all;

entity LED_blanker is
  port (hex: out std_logic_vector(6 downto 0));
end LED_blanker;
      
architecture behavioural of LED_blanker is
begin
  
    hex <= "1111111"; 
    
end behavioural;