library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity memoire  is
    Port ( DIN, CLOCK, W, R , reset : in  STD_LOGIC;
           DOUT : out  STD_LOGIC);
end memoire ;

architecture code of memoire  is
    component bascule
        Port ( clk, d : in  STD_LOGIC;
               q : out  STD_LOGIC);
    end component;
    
    signal A, D : STD_LOGIC;
begin
PROCESS (W)
BEGIN
    if reset = '1' then
	 A <= '0';
	 else
	 A <= (W and DIN) or ((not W) and D)  ;
	 end if ;
END PROCESS;
    U1: bascule port map(clk => CLOCK, d => A, q => D);
process(R , reset)
BEGIN
	 DOUT <= D AND R  ;

END PROCESS;
end code ;