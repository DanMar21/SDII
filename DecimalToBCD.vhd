
library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity DecimalToBCD is 
      port(Decimal: in std_logic_vector (9 downto 0);
		         BCD: out std_logic_vector (3 downto 0));
end DecimalToBCD;


architecture Respuesta of DecimalToBCD is
SIGNAL or4, or3, or2, or1: std_logic; 

BEGIN
	  or4 <= Decimal(9) or Decimal(5) or Decimal(7) or Decimal(3) or Decimal(1);
	  or3 <= Decimal(6) OR Decimal(7) OR Decimal(3) OR Decimal(2);
	  OR2 <= Decimal(5) OR Decimal(6) OR Decimal(7) OR Decimal(4);
	  or1 <= Decimal(9) or Decimal(8); 
	  
     BCD <= (or1 & or2 & or3 & or4);

		
end Respuesta; 