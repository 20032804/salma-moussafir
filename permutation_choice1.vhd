library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity permutation_choice1 is
    port (
        k       : in  std_logic_vector(10 downto 1);
        pc1_L   : out std_logic_vector(5 downto 1);
		  pc1_R   : out std_logic_vector(5 downto 1)
    );
end entity permutation_choice1;

architecture code of permutation_choice1 is
signal  k1 : std_logic_vector(10 downto 1) ; 
begin

    k1(1) <= k(10);
	 k1(2) <= k(9);
	 k1(3) <= k(8);
	 k1(4) <= k(7);
	 k1(5) <= k(6);
	 k1(6) <= k(5);
	 k1(7) <= k(4);
	 k1(8) <= k(3);
	 k1(9) <= k(2);
	 k1(10) <= k(1); 
	 	 
	 pc1_L(1)<= k1(5);
	 pc1_L(2)<= k1(3);
	 pc1_L(3)<= k1(10);
	 pc1_L(4)<= k1(8);
	 pc1_L(5)<= k1(7);
	 
	 pc1_R(1)<= k1(9);
	 pc1_R(2)<= k1(6);
	 pc1_R(3)<= k1(1);
	 pc1_R(4)<= k1(2);
	 pc1_R(5)<= k1(4);
	 
	 
	 

end code;
