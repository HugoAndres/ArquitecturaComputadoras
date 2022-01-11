			--	Programa de Unidad de Control, con 8 instrucciones para una arquitectura de 8 bits 
			-- Elaborado por: J. Rivera Ortiz, C. Enrique Salinas Franco, V. Hugo Magaña Bautista, H. Andrés Machorro Meléndez, V. Manuel López Salazar, M. Castro Martínez, A. Romero Hernández.
			-- Fecha: 06 de octubre de 2021
			
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
							
				begin
				
				UC : process(clk,clr,exe,ent_datos,ent_inst) 
				     
					  begin 
					 
					  if (clr = '0') then          	-- Si se da el reset
			
						AX <= "0000000000000000";     -- Limpia el acumulador de 16 bits
						PC <= "00000000";					-- Limpia el contador de programa
						IX <= "0000000000000";		   -- Limpia el indice
		    
					  elsif (clk' event and clk = '1') then
					 
					 	 if (exe = '0') then									--	Fue presionado el boton de la ejecucion de instrucciones
					 
						   case ent_inst is									--	Set de instrucciones
							  
							  when "0000" =>									-- Instruccion CLA
							  
								AX <= "0000000000000000";					-- Limpia el acumulador 
								PC <= PC + 1;									-- Incremento del contador de programa 
							     
							  when "0001" =>									-- MOVX
							  
								AX(7 downto 0) <= ent_datos;				-- Carga la parte baja del acumulador con un dato
								PC <= PC + 1;			 					   -- Incremento del contador de programa
							  
							  when "0010" =>									-- MOVIX 
							  
								IX (7 downto 0) <= ent_datos;				-- Carga el registro indice con una direccion
								
								bus_ctrl (0) <= '0'; 						-- Control del chip enable (con 0 se activa)
								bus_ctrl (1) <= '0'; 						-- Control de salida y entrada (con 0 es salida)
								
								bus_ctrl (2) <= '1'; 						--	Control de escritura/lectura (con 1 es solo lectura)
								bus_ctrl (3) <= '0'; 						--	Control de byte bajo (con 0 se habilita el byte bajo) 
								bus_ctrl (4) <= '1'; 						-- Control de byte alto (con 1 se deshabilita el byte alto)
															  
								bus_dir <= std_logic_vector("0000000" & IX);	-- Se carga la direccion del registro IX con 11 ceros concatenados
								AX <= std_logic_vector("00000000" & bus_datos) ;	-- Se carga AX con el dato de la direccion IX
																						
								PC <= PC + 1;			   				   -- Incremento del contador de programa
							  
							  when "0011" =>									-- MOVIA
							  
								IX (7 downto 0) <= ent_datos;				-- Carga el registro indice con una direccion
								
								bus_ctrl (0) <= '0'; 						-- Control del chip enable (con 0 se activa)
								bus_ctrl (1) <= '-'; 						-- Control de salida y entrada (indefinido)
								
								bus_ctrl (2) <= '0'; 						--	Control de escritura/lectura (con 0 es solo escritura)
								bus_ctrl (3) <= '0'; 						--	Control de byte bajo (con 0 se habilita el byte bajo) 
								bus_ctrl (4) <= '1'; 						-- Control de byte alto (con 1 se deshabilita el byte alto)
							  
								bus_dir <= std_logic_vector("0000000" & IX);		-- Se carga la direccion del registro IX
								bus_datos <= AX (7 downto 0);				-- Se carga en la direccion de memoria el dato en AX
								
								PC <= PC + 1;			 					   -- Incremento del contador de programa							
							  
							  when "0100" =>									-- SUMA
							 
							     -- Suma del acumulador con un dato y el resultado se almacena en el acumulador
								
								ADD(AX(7 downto 0),ent_datos,flag, AX(7 downto 0));								
								PC <= PC + 1;			 					   -- Incremento del contador de programa	
							  
							  when "0101" =>									-- RESTA
							    
								  -- Resta del acumulador con un dato y el resultado se almacena en el acumulador 
								
								SUB(AX(7 downto 0), ent_datos,flag, AX(7 downto 0));												
								PC <= PC + 1;			 					   -- Incremento del contador de programa
							  
							  when "0110" =>				   				-- MULTIPLICACIÓN
							  
							     -- Multiplica el acumulador con un dato y el resultado se almacena en el acumulador
								
								MUL(AX(7 downto 0),ent_datos,flag,AX);												
								PC <= PC + 1;								   -- Incremento del contador de programa
								
							  when "0111" =>
							  
							  andS(AX(7 downto 0), ent_datos, AX(7 downto 0));	-- Compuerta AND
                       PC <= PC+1;										-- Incremento del contador de programa
							
							  when "1000" =>
							  
							  notS(AX(7 downto 0), ent_datos, AX(7 downto 0)); -- Compuerta NOT
                       PC <= PC+1;										-- Incremento del contador de programa
							  
							  when "1001" =>
							  
							  norS(AX(7 downto 0), ent_datos, AX(7 downto 0)); -- Compuerta NOR
                       PC <= PC+1;										-- Incremento del contador de programa
							  
							  when "1010" =>
							  
							  nandS(AX(7 downto 0), ent_datos, AX(7 downto 0)); -- Compuerta NAND
                       PC <= PC+1;										-- Incremento del contador de programa
							  
							  when "1011" =>
							  
							  xorS(AX(7 downto 0), ent_datos, AX(7 downto 0)); -- Compuerta XOR
                       PC <= PC+1;										-- Incremento del contador de programa
							  
							  when "1100" =>
							  
							  xnorS(AX(7 downto 0), ent_datos, AX(7 downto 0)); -- Compuerta XNOR
                       PC <= PC+1;										-- Incremento del contador de programa
							  
							  when "1101" =>
							  
							  LDER(AX(7 downto 0), ent_datos, AX(7 downto 0)); -- Corrimiento a la izquierda
                       PC <= PC+1;										-- Incremento del contador de programa

							  when "1110" =>
							  
							  LIZQ(AX(7 downto 0), ent_datos, AX(7 downto 0)); -- Corrimiento a la derecha
                       PC <= PC+1;										-- Incremento del contador de programa
							  
							  when others =>									-- Compuerta OR
							  
							     -- OR del acumulador con un dato y el resultado se almacena en el acumulador
							  
								LOR(AX(7 downto 0),ent_datos,flag,AX(7 downto 0));												
								PC <= PC + 1;			 					   -- Incremento del contador de programa
							  
							
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
				
				
				
			end architecture;
		         