			--	Programa componente PILA en arquitectura RISC
			-- Elaborado por: J. Rivera Ortiz, C. Enrique Salinas Franco, V. Hugo Magaña Bautista, H. Andrés Machorro Meléndez, V. Manuel López Salazar, M. Castro Martínez, A. Romero Hernández.
			-- Fecha: 15 de noviembre de 2021
			
         -- Declaracion de Bibliotecas
					  
			library ieee;
			use ieee.std_logic_1164.all;
			use ieee.std_logic_unsigned.all;   -- Esta biblioteca es usada para operaciones con signo
			use ieee.numeric_std.all;
			use work.ALU_UC.all;					-- Paquete de los registros
			use work.bcd_7seg.all;				--	Paquete para los display
			
			
			--	Inicio de la entidad
						
			entity U_Control is 					
					Port(
							clk, clr  	: 		  in std_logic;    							-- Reloj, Reset 
							exe 		   :		  in std_logic;							   -- Boton de ejecucion
							ent_datos   : 		  in std_logic_vector(7 downto 0);		-- Datos de los switches
							ent_inst		:		  in std_logic_vector(3 downto 0);		--	Intrucciones del Switch	
							bus_datos   :       inout std_logic_vector(7 downto 0);  -- Bus de datos (incluye RAM)
							flag			:		  out std_logic_vector (2 downto 0);	-- Banderas de estado
							bus_dir		:		  out std_logic_vector(19 downto 0);	-- Bus de direcciones 19 bits
							bus_ctrl		:		  out std_logic_vector(4 downto 0);	   -- Bus de Control para SRAM
							Disp_7sg    : 	     out std_logic_vector(55 downto 0)    -- Despliegue en 7 segmentos para todos los display
						 );    
			end entity;
			
			
			architecture control of  U_Control is
			
				-- Creacion de los registros
		  
				signal AX         : std_logic_vector (15 downto 0) := "0000000000000000";  -- Reg. Acumulador
				signal PC		   : unsigned(7 downto 0) 				:= "00000000";   			-- Reg. contador de programa
				signal IX	      : std_logic_vector (12 downto 0) := "0000000000000";		-- Reg. Indice
				signal inst       : std_logic_vector(3 downto 0) := "0000";			 			-- zero
				signal aux			: std_logic_vector(7 downto 0) := "00000000";				-- auxiliar
				
				-- Para la PILA
				
				-- Declaracion de constantes para los 7 segmentos -- 
			  			     
				  constant OFF  : std_logic_vector(6 downto 0) := "0111111";  -- Constante para mostrar -
		
		      -- Control de ralentizacion para reloj
		
              constant base_1Hz  : Integer := 10000000; 		     -- Constante para 1Hz
			     signal count1Hz    : INTEGER range 0 to base_1Hz;  -- Señal para 1Hz
				  signal clk1hz : std_logic;                         -- Señal de reloj 1 Hz 
					 
			   -- Declaracion de estructura FIFO
				
				  type pila is array (7 downto 0) of std_logic_vector(7 downto 0);   -- Creacion de un tipo PILA
				  signal FIFO: pila;                                                 -- Pila FIFO es un arreglo de 8x8bits
			     				  
			   -- Declaracion de la señal para estado de la estructura
				
				  signal status: std_logic_vector(7 downto 0);    -- Muestra el estado de la estructura FIFO
				  
				-- Declaracion de la señal buffer para extraer datos
				
				  signal store: std_logic_vector(7 downto 0) := "00000000"; 
				  
				  
				-- Declaracion de señales de status
			
					signal vaciado : std_logic_vector(7 downto 0);  -- muestra las localidades vacias
					signal llenado : std_logic_vector(7 downto 0);  -- Muestra las localidades llenas	
					
				-- Declaracion de señales de comunicacion
				
					signal hex0 : std_logic_vector(6 downto 0);     -- LSB del dato de salida
					signal hex1 : std_logic_vector(6 downto 0);     -- MSB del dato de salida
					signal hex2 : std_logic_vector(6 downto 0);     -- Mostrar In
					signal hex3 : std_logic_vector(6 downto 0);     -- or Out
					signal hex4 : std_logic_vector(6 downto 0);     -- LSB del dato de entrada
					signal hex5 : std_logic_vector(6 downto 0);		 -- MSB del dato de entrada
					
				-- Declaracion de señales de io
					signal entrada: std_logic;                       -- Para introducir datos
					signal salida: std_logic;
					signal datos: std_logic_vector(7 downto 0);					-- Para sacar datos
					
				begin
				
								
				--   Primer nibble																											
					bcd_conv(store(3 downto 0), hex0); -- Decodificacion de la señal buffer de salida a los display de 7 segmentos

					-- Segundo nibble										
					bcd_conv(store(7 downto 4), hex1); -- Decodificacion de la señal buffer de salida a los display de 7 segmentos
					
					--   Primer nibblxe										
					bcd_conv(store(3 downto 0), hex4); -- Decodificacion de entrada de datos a los display de 7 segmentos
					
					-- Segundo nibble			
					bcd_conv(store(7 downto 4), hex5); -- Decodificacion de la señal buffer de salida a los display de 7 segmentos
									
					llenado <= status;      -- muestreo del estado de la estructura (cuando se llena)
					vaciado <= not status;  -- muestreo del estado de la estructura (cuando se vacia)
				
													
				
				UC : process(clk,clr,exe,ent_datos,ent_inst) 
				     
					  begin 
					 
					  if (clr = '0') then          	-- Si se da el reset
			
						AX <= "0000000000000000";     -- Limpia el acumulador de 16 bits
						PC <= "00000000";					-- Limpia el contador de programa
						IX <= "0000000000000";		   -- Limpia el indice
		    
					  elsif (clk' event and clk = '1') then
					 
					 	 if (exe = '0') then									--	Fue presionado el boton de la ejecucion de instrucciones
					 
						   case ent_inst is									--	Set de instrucciones
							  
							  when "0000" =>									-- Suma
							  
								ADD(AX(7 downto 0),ent_datos,flag, AX(7 downto 0));								
								PC <= PC + 1;			 					   -- Incremento del contador de programa								
							     
							  when "0001" =>									-- Resta
							  
								SUB(AX(7 downto 0), ent_datos,flag, AX(7 downto 0));												
								PC <= PC + 1;			 					   -- Incremento del contador de programa
							  
							  when "0010" =>									-- Compuerta AND
							  
								andS(AX(7 downto 0), ent_datos,flag, AX(7 downto 0));	
								PC <= PC+1;										-- Incremento del contador de programa
							  							  																					  							
							  when others =>									-- En otro caso AND
							  
							   andS(AX(7 downto 0), ent_datos,flag, AX(7 downto 0));	
								PC <= PC+1;										-- Incremento del contador de programa							  
							
							end case;
					 					 
						 else
						 
						               -- Mostrando el Contador de programa
						     
							  aux <= std_logic_vector(PC);
							  bcd_conv(aux (3 downto 0),Disp_7sg(48 downto 42));   -- Mostrando el primer  nibble
   						  bcd_conv(aux (7 downto 4),Disp_7sg(55 downto 49));   -- Mostrando el segundo nibble
							  
											--	Mostrando el registro indice
											
							  bcd_conv(IX (3 downto 0),Disp_7sg(34 downto 28));   -- Mostrando el primer  nibble
   						  bcd_conv(IX (7 downto 4),Disp_7sg(41 downto 35));   -- Mostrando el segundo nibble
											
											-- Mostrando el codigo de la instruccion
											
							  inst <= std_logic_vector(ent_inst);
							  bcd_conv(inst,Disp_7sg(20 downto 14));   -- Mostrando el primer  nibble (REVISAR)
   						  inst <= "0000";
							  bcd_conv(inst,Disp_7sg(27 downto 21));   				     -- Mostrando el segundo nibble
								
											-- Mostrando el dato en el acumulador
							  
							  bcd_conv(AX(3 downto 0),Disp_7sg(6 downto  0));   -- Mostrando el primer  nibble 
   						  bcd_conv(AX(7 downto 4),Disp_7sg(13 downto 7));   -- Mostrando el segundo nibble
											
			
													
						 end if;													
					  end if;													--	Fin del primer if del CLK
				
				end process UC;
												
				
				LPILA : process(clk1hz, entrada, salida)
								
				  variable k: integer range 0 to 7 := 0;           -- Para controlar el numero de localidades
				 
			     begin
				  	 
                if clk1hz'event and clk1hz = '1' then 
					 
							 if entrada = '0' then
								
								 if k = 7 then     -- Si la estructura esta llena
								
								    hex2 <= OFF;   -- Solo barras
									 hex3 <= OFF;   -- Solo barras
									 FIFO(7) <= datos; -- Se asegura que el arreglo 7 se llene
									 status(7) <= '1'; -- Asegurando el encendiendo el ultimo led  
								
								 else
								    
	                         hex2 <= "0101011";   -- Caracter "n"
									 hex3 <= "1001111";   -- Caracter "I"								 
									 FIFO(k) <= datos;   -- Introduce el dato a una localidad FIFO
									 status(k) <= '1';
									 k := k + 1;  -- Contador para incremento de localidades y del estatus
								
								 end if;
								 
							 elsif salida = '0' then
						 
									if k = 0 then         -- Si la estructura esta vacia
									
									  hex2 <= OFF;   -- Solo barras
									  hex3 <= OFF;   -- Solo barras
									  store <= FIFO(1); -- Se asegura que el arreglo 1 se vacie
									  status(0) <= '0'; -- Asegurando el apagado del ultimo LED
									
									else
									  
									  hex2 <= "1100011";   -- Caracter "u"
									  hex3 <= "1000000";   -- Caracter "O"
									  store <= FIFO(0);	  -- Se extrae el dato FIFO inicial
									  status(k) <= '0'; 
									  
									    for i in 0 to 6 loop
										  
										  FIFO(i) <= FIFO(i+1);   -- Desplazamiento de la estructura FIFO  
										 
										 end loop;									  
									  
									  k := k - 1;  -- Contador para incremento de localidades y del estatus
									
									end if;
									
							 else
							  
							     hex2 <= OFF;   -- Solo barras
								  hex3 <= OFF;   -- Solo barras
						 
						    end if;
							 
					 end if;											
									
				end process LPILA;
				
				
		  -- ----------------------------------------
		  --   Proceso para ralentizacion del reloj
		  -- ----------------------------------------							
				Clock:      process(clk1hz, count1Hz, clk)                     
              
             begin
				 						 
					 if (clk' event and clk = '1') then
						 
						  if count1Hz < base_1Hz then 
					             count1Hz <= count1Hz+1;
				        else
								 	 clk1hz <= not clk1hz;
									 count1Hz <= 0;
				        end if;	
									 
					 end if;

             end process;
				
				
			end architecture;
		         