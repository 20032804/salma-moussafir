library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rot_left is
port (clk		: in std_logic;
		msg_L		: in std_logic_vector(5 downto 1);
		msg_R		: in std_logic_vector(5 downto 1);
		rot_msg_L	: out std_logic_vector(5 downto 1);
		rot_msg_R	: out std_logic_vector(5 downto 1);
	   en_rot : in std_logic -- en_rot signal to control rot 
		
	);

end rot_left;

architecture code of rot_left is

	signal rot_L : unsigned(5 downto 1);
	signal rot_R : unsigned(5 downto 1);
	
begin
	process (clk)
	begin
		if (clk'event and clk='1' and en_rot='1') then

						rot_L <= rotate_right(unsigned(msg_L) ,3 );
						rot_R <= rotate_right(unsigned(msg_R) ,3);

		end if;
	end process;
	
	rot_msg_L <= std_logic_vector(rot_L);
	rot_msg_R <= std_logic_vector(rot_R);

end code ;