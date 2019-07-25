library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity and_2bit IS
port (a,b: in std_logic;
        y: out std_logic);
end and_2bit ;

architecture rtl of and_2bit is
begin

y <= a and b;

end rtl;
