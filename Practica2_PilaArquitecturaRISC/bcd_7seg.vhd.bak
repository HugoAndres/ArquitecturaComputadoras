
   -- Paquete para Decodificar el dato de RAM en display de 7 segmentos
	-- Con el sistema numerico hexadecimal
	-- Elaborado por:	U581
	--	Fecha: 31 de octubre de 2020

		-- Declaracion de las bibliotecas

		Library ieee;
		use ieee.std_logic_1164.all;

	         -- Declaracion del paquete
  

    	package bcd_7seg is
	     
		      -- Declaracion de constantes para los display
		      
		   constant zero : std_logic_vector(6 downto 0) := "1000000";     -- Constante para mostrar 0
			constant uno  : std_logic_vector(6 downto 0) := "1111001";		-- Constante para mostrar 1
			constant dos  : std_logic_vector(6 downto 0) := "0100100";		-- Constante para mostrar 2
			constant tres : std_logic_vector(6 downto 0) := "0110000";		-- Constante para mostrar 3
			constant quat : std_logic_vector(6 downto 0) := "0011001";		-- Constante para mostrar 4
			constant qint : std_logic_vector(6 downto 0) := "0010010";		-- Constante para mostrar 5
			constant sixt : std_logic_vector(6 downto 0) := "0000010";		-- Constante para mostrar 6
			constant sept : std_logic_vector(6 downto 0) := "1111000";		-- Constante para mostrar 7
			constant octo : std_logic_vector(6 downto 0) := "0000000";		-- Constante para mostrar 8
			constant nono : std_logic_vector(6 downto 0) := "0010000";		-- Constante para mostrar 9
			constant alph : std_logic_vector(6 downto 0) := "0001000";		-- Constante para mostrar A
			constant beta : std_logic_vector(6 downto 0) :=	"0000011";		-- Constante para mostrar B
			constant cobi : std_logic_vector(6 downto 0) := "1000110";		-- Constante para mostrar C
			constant delt : std_logic_vector(6 downto 0)	:= "0100001";		-- Constante para mostrar D
			constant eco  : std_logic_vector(6 downto 0) := "0000110";		-- Constante para mostrar E
			constant fox  : std_logic_vector(6 downto 0)	:= "0001110";		-- Constante para mostrar F
				
	          -- Declaracion del procedimiento
				 	
	      procedure bcd_conv (signal bcd : in std_logic_vector (3 downto 0); 
			                    signal D : out std_logic_vector (6 downto 0) );
	      
		
      end bcd_7seg;
		 
		 
		   --	Declaracion del cuerpo del paquete
		 

		 package body bcd_7seg is
		  
			     -- Inicio del procedimiento
				  
			  procedure bcd_conv (signal BCD : in std_logic_vector (3 downto 0); 
			                      signal D : out std_logic_vector(6 downto 0) ) is 
				
                    
				        begin					 
										
								case BCD is								--	Seleccion de constante dependiendo del valor de entrada
								
									when "0000" => D <= zero;
									when "0001" => D <= uno;
									when "0010" => D <= dos;
									when "0011" => D <= tres;
									when "0100" => D <= quat;
									when "0101" => D <= qint;
									when "0110" => D <= sixt;
									when "0111" => D <= sept;
									when "1000" => D <= octo;
									when "1001" => D <= nono;
									when "1010" => D <= alph;
									when "1011" => D <= beta;
									when "1100" => D <= cobi;
									when "1101" => D <= delt;
									when "1110" => D <= eco;
									when others => D <= fox;
		  
								end case;
  
			  end bcd_conv;			-- Fin del procedimiento
		 
		 end bcd_7seg;					--	Fin del cuerpo del paquete
	
	
		
		


