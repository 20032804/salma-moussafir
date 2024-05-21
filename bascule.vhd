library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bascule is
    Port ( clk, d : in  STD_LOGIC;
           q : out  STD_LOGIC);
end bascule;

architecture code of bascule is
begin
    process(clk)
    begin
        if rising_edge(clk) then
            q <= d; 
        end if;
    end process;
end code;