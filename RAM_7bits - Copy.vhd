library ieee ; 
use  ieee.std_logic_1164.all ; 
use ieee.numeric_std.all;

entity RAM_7bits is 
  port ( DIN : in std_logic_vector(6 downto 0 ); 
         CLOCK , R ,RESET , W : in std_logic ;
			DOUT:  out std_logic_vector(6 downto 0 ) 
  ); 
end RAM_7bits ;

architecture code of RAM_7bits is 
  component memoire is 
      Port ( DIN, CLOCK, W, R , reset : in  STD_LOGIC;
           DOUT : out  STD_LOGIC);
   end component ; 	
begin 
bit_1: memoire port map (
               DIN => DIN (0),
               CLOCK => CLOCK ,
					W => W,
					R =>R,
					reset => RESET,
               DOUT => DOUT(0)
      );
bit_2: memoire port map (
               DIN => DIN (1) ,
               CLOCK => CLOCK ,
					W => W,
					R =>R,
					reset => RESET,
               DOUT => DOUT(1)
      );
bit_3: memoire port map (
               DIN => DIN (2), 
               CLOCK => CLOCK ,
					W => W,
					R =>R,
					reset => RESET,
               DOUT => DOUT(2)
      );
bit_4: memoire port map (
               DIN => DIN (3) ,
               CLOCK => CLOCK ,
					W => W,
					R =>R,
					reset => RESET,
               DOUT => DOUT(3)
      );
bit_5: memoire port map (
               DIN => DIN (4) ,
               CLOCK => CLOCK ,
					W => W,
					R =>R,
					reset => RESET,
               DOUT => DOUT(4)
      );
bit_6: memoire port map (
               DIN => DIN (5) ,
               CLOCK => CLOCK ,
					W => W,
					R =>R,
					reset => RESET,
               DOUT => DOUT(5)
      );
bit_7: memoire port map (
               DIN => DIN (6) ,
               CLOCK => CLOCK ,
					W => W,
					R =>R,
					reset => RESET,
               DOUT => DOUT(6)
      );
		
end code ; 