--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity mss is
	port(
		clk, start, resetn, ingreso, tecla, C, D, U, igual, finj, Num_Aleatorio, diezSeg, Limite: in std_logic;
		est: out std_logic_vector(4 downto 0);
		EnTeclado, EnC, EnDec, EnU, EnNum, Eni, Enj, EnComp, EnDirj, EnRep, EnDec1, EnDec2, EnF, EnNum3, EnNumRandom, Fin: out std_logic);
end mss;

--Architecture
architecture solve of mss is
	-- Signals,Constants,Variables,Components
	type estado is (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1);
	signal y: estado;
	
	signal formato_entradas: std_logic_vector(11 downto 0);
	signal formato_salidas: std_logic_vector(15 downto 0);
	begin
	--Process #1: Next state decoder and state memory
	formato_entradas <= start& resetn& ingreso& tecla& C& D& U& igual& finj& Num_Aleatorio& diezSeg& Limite;
	
	EnTeclado <= formato_salidas(0); 
	EnC<=formato_salidas(1); 
	EnDec<=formato_salidas(2); 
	EnU<=formato_salidas(3); 
	EnNum<=formato_salidas(4); 
	Eni<=formato_salidas(5); 
	Enj<=formato_salidas(6); 
	EnComp<=formato_salidas(7); 
	EnDirj<=formato_salidas(8); 
	EnRep<=formato_salidas(9); 
	EnDec1<=formato_salidas(10); 
	EnDec2<=formato_salidas(11); 
	EnF<=formato_salidas(12); 
	EnNum3<=formato_salidas(13); 
	EnNumRandom<=formato_salidas(14); 
	Fin<=formato_salidas(15);

	
	process(resetn,clk)

	--Sequential programming
		begin
			if resetn = '0' then y<= T0;
			elsif (clk'event and clk = '1') then
				case y is
					when A => 
                            if formato_entradas="1000000000" then y <= A;
                            else y <= B; end if;		
					when B => 
                            if formato_entradas="10000000" then y <= B;
									      else y <= C; end if;	
											
					when C => y <= T3;
					when D => y <= T1;
					when E => y <= T5;
					
					
					
					when F =>
					
					when G =>
					
					when H =>
					when I =>
					when J =>
					when K =>
					when L =>
					when M =>
					when N =>
					when O =>
					when P =>
					when Q =>
					when R =>
					when S =>
					when T =>
					when U =>
					when V =>
					when W =>
					when X =>
					when Y =>
					when Z =>
					
								 	 
					when A1 => y <= C;
					
				end case;
			end if;
	end process;
	
	
	--Process #2: Output decoder
	Process(y) --moore
		--Sequential programming
		BEGIN
		formato_salidas<="00000000";
		case y is
			when A => formato_salidas <= "10000000"; est <= "0000";
			when B => 
			when C => formato_salidas <= "00100000"; est <= "0010";
			when D => formato_salidas <= "01000000"; est <= "0011";
			when E => formato_salidas <= "00010000"; est <= "0100";
			when F => 
			when G => formato_salidas <= "00001000"; est<="1101";
			when H => 
			when I => formato_salidas <= "01000000"; est <= "1011";
			when J => formato_salidas <= "00000011"; est <= "1000";
			when K => formato_salidas <= "00000100"; est <= "1010";
			when L =>
			when M =>
			when N =>
			when O =>
			when P =>
			when Q =>
			when R =>
			when S =>
			when T =>
			when U =>
			when V =>
			when W =>
			when X =>
			when Y =>
			when Z =>
			when A1 =>
		end case;
	end Process;
end solve;

