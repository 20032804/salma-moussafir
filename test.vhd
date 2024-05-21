library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity test is  -- tester presence du sign DIN --
port(
test_bit : out  STD_LOGIC ;
signal_entree: in std_logic_vector(6 downto 0 )
);
end test;
architecture code of test is
signal signal_entree_int : integer ;
begin 
process (signal_entree)
begin 
signal_entree_int <= to_integer(unsigned(signal_entree));
test_bit <= '0';   
-- Check if any bit in signal_entree is high
if  signal_entree_int >= 1 then
      test_bit <= '1';
	else	
      test_bit <= '0';	
   end if;
end process ;
end code;