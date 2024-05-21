Library ieee ;
use ieee.std_logic_1164.all;

entity devide_msg_out_LR is 
 port ( msg_out : out std_logic_vector(10 downto 1);
        permut_msg_L : in std_logic_vector(10 downto 5);
		  permut_msg_R : in std_logic_vector(4 downto 1));
end devide_msg_out_LR ; 

architecture code of devide_msg_out_LR is
signal permut_msg : std_logic_vector(10 downto 1);
begin 
 permut_msg <= permut_msg_R & permut_msg_L ;
 msg_out(1)<= permut_msg(8);
 msg_out(2)<= permut_msg(6);
 msg_out(3)<= permut_msg(2);
 msg_out(4)<= permut_msg(10);
 msg_out(5)<= permut_msg(1);
 msg_out(6)<= permut_msg(5);
 msg_out(7)<= permut_msg(9);
 msg_out(8)<= permut_msg(4);
 msg_out(9)<= permut_msg(7);
 msg_out(10)<= permut_msg(3);

 
 end code ; 