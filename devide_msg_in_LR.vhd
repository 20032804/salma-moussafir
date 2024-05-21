Library ieee ;
use ieee.std_logic_1164.all;

entity devide_msg_in_LR is 
 port ( msg_in : in std_logic_vector(9 downto 0);
        permut_msg_L : out std_logic_vector(9 downto 5);
		  permut_msg_R : out std_logic_vector(4 downto 0));
end  devide_msg_in_LR; 

architecture code of devide_msg_in_LR is 
begin 
 permut_msg_R(0)<= msg_in(8);
 permut_msg_R(1)<= msg_in(2);
 permut_msg_R(2)<= msg_in(9);
 permut_msg_R(3)<= msg_in(6);
 permut_msg_R(4)<= msg_in(0);

 permut_msg_L(5)<= msg_in(3);
 permut_msg_L(6)<= msg_in(5);
 permut_msg_L(7)<= msg_in(4);
 permut_msg_L(8)<= msg_in(7);
 permut_msg_L(9)<= msg_in(1);
 
 end code ; 