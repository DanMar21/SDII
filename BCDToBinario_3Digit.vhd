
library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity BCDToBinario_3Digit is
 
      port(BCD: in std_logic_vector (11 downto 0);
		      Binario: out std_logic_vector (7 downto 0));
end BCDToBinario_3Digit;


architecture Respuesta of BCDToBinario_3Digit is
SIGNAL Unidad, Decena, Centena: std_logic_vector(7 downto 0); 
SIGNAL UD, UDC: std_logic_vector(7 downto 0);

BEGIN
	  Centena <= '0' & '0' & '0' & '0' & BCD(11 DOWNTO 8);
	  Decena <= '0' & '0' & '0' & '0' & BCD(7 DOWNTO 4);
	  Unidad <= '0' & '0' & '0' & '0' & BCD(3 DOWNTO 0);
	  
	  process(Decena)
	  
	  BEGIN 
	     if (Decena = "00000000") then 
		      UD<=Unidad; 
		  
		  elsif (Decena = "00000001") then
		      UD <= Unidad+"00001010";
		 
		  elsif (Decena = "00000010") then
		      UD <= Unidad + "00010100";
				
		  elsif (Decena = "00000011") then
		      UD <= Unidad + "00011110";
				
		  elsif (Decena = "00000100") then
		      UD <= Unidad + "00101000";
				
		  elsif (Decena = "00000101") then
		      UD <= Unidad + "00110010";
				
		  elsif (Decena = "00000110") then
		      UD <= Unidad + "00111100";
				
		  elsif (Decena = "00000111") then
		      UD <= Unidad + "01000110";
				
		  elsif (Decena = "00001000") then
		      UD <= Unidad + "01010000";
				
		  elsif (Decena = "00001001") then
		      UD <= Unidad + "01011010";
		  
		  else 
		      UD <= Unidad; 
				
		  end if;  
	  end process; 
	  
     process (Centena)
	  
	  begin
	     if (Centena = "00000001") then
				UDC <= UD + "01100100"; 
		  
		  elsif (Centena = "00000010") then
		      UDC <= UD + "11001000"; 
				
		  else 
		      UDC <= UD;
				
		  end if;
	  end process; 
	  
Binario <= UDC;

end Respuesta; 