library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity count_bin IS
port (clk,rst: in std_logic;
      count: out std_logic_vector (23 downto 0));
end count_bin ;

architecture rtl of count_bin is
signal temp :unsigned(23 downto 0);
begin

process(clk, rst)
begin 
if(rst='0')then
temp <= (others => '0');
elsif (rising_edge(clk))then
temp<= temp + '1';
end if;
end process;
count<=std_logic_vector (temp);


end rtl;
