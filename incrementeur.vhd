library ieee ; 
use ieee.std_logic_1164.all ; 
use ieee.std_logic_unsigned.all ; 
use ieee.numeric_std.all ;

entity incrementeur is 
  port (test_out : in std_logic ;
        reset : in std_logic ;
        S_out : out std_logic_vector(3 downto 0  ));
end incrementeur ; 


architecture code of incrementeur is 
signal DEMUX_position : integer ;
begin 
   process (test_out)
   begin
   if reset = '1' then 
     DEMUX_position <= 1 ;
	else 	
	if test_out = '1' then 
	 DEMUX_position <= DEMUX_position + 1 ;
	end if ;
	end if ; 
	S_out <= std_logic_vector (to_unsigned(DEMUX_position, 4));
	end process ;
end code ; 
	 
	 