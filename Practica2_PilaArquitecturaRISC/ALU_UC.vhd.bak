
   -- Programa de ALU para SUMA, RESTA, MULTIPLICACION en operaciones aritmeticas
	-- Para OR, AND, XOR y NOT para operaciones Logicas
	
	-- Elaborado por:   U581
	-- Fecha: 30 de octubre de 2020
	
	              -- Declaracion de Bibliotecas
					  
			library ieee;
			use ieee.std_logic_1164.all;
			use ieee.std_logic_signed.all;          -- Esta biblioteca es usada para operaciones con signo
			use ieee.numeric_std.all;
			
			
			         -- Declaracion de la entidad
			
	      entity ALU is
					 port ( 
		                 REN1, REN2: in std_logic_vector (3 downto 0);   -- se declaran los registros de entrada y salidas
		                 Sel: in std_logic_vector (2 downto 0);  		  -- selector de operaciones
		                 Flag: out std_logic_vector (2 downto 0);		  -- Señalizadores
							  acumulador: out std_logic_vector (7 downto 0)   -- Salida de las operaciones  
							 );
      	
			end entity;
			
			
			Architecture A8bits of ALU is
			   
				    -- Declaracion de constantes
			   signal aux    : std_logic_vector(7 downto 0) := "00000000";  -- registro para revision de Flag
			   constant zero : std_logic_vector(7 downto 0) := "00000000" ;   -- Para 0  
				constant full : std_logic_vector(7 downto 0) := "00001111" ;   -- Para 1
			   
			   		    
 				Begin
			
					OA : process (REN1,REN2,sel,aux)
			
						   begin

								case Sel is
								
									when "000" =>         -- Operacion de suma 
								    
									    aux <= std_logic_vector("0000" & signed(REN1) + signed(REN2) );   -- se incluye 0000 y std_logic_vector
										 acumulador <= aux;   															 -- para concatenar
										 										 										   							   					 										 									
									when "001" =>         -- Operacion de resta
									    
										  aux <= std_logic_vector("0000" & signed(REN1) - signed(REN2) );	 -- Se resta REN1 con REN2
										  acumulador <= aux;
																			
									when "010" =>         -- Operacion de MultIPLICACION
									   
									     aux <= std_logic_vector( signed(REN1) * signed(REN2) );
										  acumulador <= aux;
									      
									when "011" =>			 -- Operacion OR
									
					      			  aux <= std_logic_vector("0000" & signed(REN1) OR signed(REN2) );
									     acumulador <= aux;
										  
							      when "100" =>		    -- Operacion AND
							           
										  aux <= std_logic_vector("0000" & signed(REN1) AND signed(REN2) );
									     acumulador <= aux;
										  
							      when  "101" =>        -- Operacion XOR
							     
								        aux <= std_logic_vector("0000" & signed(REN1) XOR signed(REN2) );
										  acumulador <= aux;
									
							      when  "110" =>        -- Operacion NOT para REN1
							     
								        aux <= std_logic_vector("0000" & NOT signed(REN1) );
										  acumulador <= aux;
									
									when others =>        -- Operacion NOT para REN2
									
									     aux <= std_logic_vector("0000" & NOT signed(REN2) );
										  acumulador <= aux;
								
								end case;	

                        if(aux = zero) then      
		   		
									 flag(0) <= '1';        -- Si la operacion tuvo 0 que Z tenga 1
								   
									else
									
									 flag(0) <= '0';

								end if;
											
								if(aux > full) then      
		   		
									 flag(1) <= '1';        -- Si la operacion excedio la capacidad del
												                        -- registro, que V tenga 1													
                            else
									
									 flag(1) <= '0';       
    			  
								end if;
											
								if(aux < zero) then      
		   		
									 flag(2) <= '1';        -- Si la operacion resulto negativa que N tenga 1
					
	                         else
									
									 flag(2) <= '0';				
									
								end if;						 
								 

					end process OA;

		   end A8bits;

			