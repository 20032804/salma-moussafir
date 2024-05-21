library ieee ; 
use ieee.std_logic_1164.all ; 

entity DEMUX is 
   port ( DIN : in std_logic_vector (6 downto 0 ) ;
	       S : in std_logic_vector(3 downto 0 ) ; 
	       RAM1 : out std_logic_vector (6 downto 0);
			 RAM2 : out std_logic_vector (6 downto 0);
			 RAM3 : out std_logic_vector (6 downto 0);
			 RAM4 : out std_logic_vector (6 downto 0);
			 RAM5 : out std_logic_vector (6 downto 0);
			 RAM6 : out std_logic_vector (6 downto 0);
			 RAM7 : out std_logic_vector (6 downto 0);
			 RAM8 : out std_logic_vector (6 downto 0);
			 RAM9 : out std_logic_vector (6 downto 0);
			 RAM10 : out std_logic_vector (6 downto 0));
			 
end DEMUX ; 
architecture code of DEMUX is 
begin  
     RAM1 <= DIN when S = "0001" else "0000000";
     RAM2 <= DIN when S = "0010" else "0000000";
     RAM3 <= DIN when S = "0011" else "0000000";
     RAM4 <= DIN when S = "0100" else "0000000";
     RAM5 <= DIN when S = "0101" else "0000000";
     RAM6 <= DIN when S = "0110" else "0000000";
     RAM7 <= DIN when S = "0111" else "0000000";
     RAM8 <= DIN when S = "1000" else "0000000";
     RAM9 <= DIN when S = "1001" else "0000000";
     RAM10 <= DIN when S= "1010" else "0000000";

end code ;