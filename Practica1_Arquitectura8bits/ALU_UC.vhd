   -- Paquete de la ALU para SUMA, RESTA, MULTIPLICACION en operaciones aritmeticas
	-- Para OR, AND, NAND, XOR, XNOR, NOR, NOT para operaciones Logicas
	-- Corrimiento a la izquierda, corrimiento a la derecha
	
	-- Elaborado por: J. Rivera Ortiz, C. Enrique Salinas Franco, V. Hugo Magaña Bautista, H. Andrés Machorro Meléndez, V. Manuel López Salazar, M. Castro Martínez, A. Romero Hernández.
	-- Fecha: 06 de octubre de 2021
	
	      -- Declaracion de Bibliotecas		  
			library ieee;
			use ieee.std_logic_1164.all;
			use ieee.std_logic_signed.all;          -- Esta biblioteca es usada para operaciones con signo
			use ieee.numeric_std.all;
			
			-- Declaracion de la entidad
	      package ALU_UC is
			
			-- Declaracion de constantes
				 
			   signal aux    : std_logic_vector(15 downto 0) := "0000000000000000";  	-- registro para revision de Flag
			   constant zero : std_logic_vector(7 downto 0) := "00000000" ;   			-- Para 0  
				constant full : std_logic_vector(7 downto 0) := "00001111" ;   			-- Para 1
				
				procedure ADD (signal REN1 : in std_logic_vector (3 downto 0);				-- Cabecera del procedimiento de la instrucción SUMA
									signal REN2 : in std_logic_vector (3 downto 0);
									signal flag : out std_logic_vector (2 downto 0);
			                  signal A    : out std_logic_vector (6 downto 0));
				
				procedure SUB (signal REN1 : in std_logic_vector (3 downto 0);				-- Cabecera del procedimiento de la instrucción RESTA
									signal REN2 : in std_logic_vector (3 downto 0);
									signal flag : out std_logic_vector (2 downto 0);
			                  signal A    : out std_logic_vector (6 downto 0));
				
				procedure MUL (signal REN1 : in std_logic_vector (3 downto 0);				-- Cabecera del procedimiento de la instrucción MULTIPLICACIÓN
									signal REN2 : in std_logic_vector (3 downto 0);
									signal flag : out std_logic_vector (2 downto 0);
			                  signal Am   : out std_logic_vector (15 downto 0));
									
				procedure andS(  signal REN1 : in std_logic_vector(7 downto 0);			-- Cabecera del procedimiento de la instrucción AND
                    signal REN2 : in std_logic_vector(7 downto 0);
                    signal A:out std_logic_vector(7 downto 0));
				
				procedure notS(  signal REN1 : in std_logic_vector(7 downto 0);			-- Cabecera del procedimiento de la instrucción NOT
						   signal REN2 : in std_logic_vector(7 downto 0);
                     signal A:out std_logic_vector(7 downto 0));
									
				procedure norS(  signal REN1 : in std_logic_vector(7 downto 0);			-- Cabecera del procedimiento de la instrucción NOR
                    signal REN2 : in std_logic_vector(7 downto 0);
                    signal A:out std_logic_vector(7 downto 0));
						  
				procedure nandS(  signal REN1 : in std_logic_vector(7 downto 0);			-- Cabecera del procedimiento de la instrucción NAND
                    signal REN2 : in std_logic_vector(7 downto 0);
                    signal A:out std_logic_vector(7 downto 0));
						  
				procedure xorS(  signal REN1 : in std_logic_vector(7 downto 0);			-- Cabecera del procedimiento de la instrucción XOR
                    signal REN2 : in std_logic_vector(7 downto 0);
                    signal A:out std_logic_vector(7 downto 0));
						  
				procedure xnorS(  signal REN1 : in std_logic_vector(7 downto 0);			-- Cabecera del procedimiento de la instrucción XNOR
                    signal REN2 : in std_logic_vector(7 downto 0);
                    signal A:out std_logic_vector(7 downto 0));
						  
				procedure LDER (signal REN1 : in std_logic_vector (7 downto 0);			-- Cabecera del procedimiento de la instrucción CORRIMIENTO A LA DERECHA
		   				signal REN2 : in std_logic_vector (7 downto 0);
			    			signal A    : out std_logic_vector (7 downto 0));

				procedure LIZQ (signal REN1 : in std_logic_vector (7 downto 0);			-- Cabecera del procedimiento de la instrucción CORRIMIENTO A LA IZQUIERDA
									signal REN2 : in std_logic_vector (7 downto 0);
			                  signal A    : out std_logic_vector (7 downto 0));
									
				procedure LOR (signal REN1 : in std_logic_vector (3 downto 0);				-- Cabecera del procedimiento de la instrucción OR
									signal REN2 : in std_logic_vector (3 downto 0);
									signal flag : out std_logic_vector (2 downto 0);
			                  signal A    : out std_logic_vector (6 downto 0));
				
			      	
			end package;
			
			
			package body ALU_UC is
			 		    
				--	Inicio de los procedimientos	
				procedure ADD (signal REN1 : in std_logic_vector (7 downto 0);				-- Procedimiento de suma
									signal REN2 : in std_logic_vector (7 downto 0);
									signal flag : out std_logic_vector (2 downto 0);
			                  signal A    : out std_logic_vector (7 downto 0)) is
									
									begin
									
									aux(7 downto 0) <= ( REN1 + REN2 );   
									A <= aux (7 downto 0);   																	
									 if(aux = zero) then      
		   							 flag(0) <= '1';        -- Si la operacion tuvo 0 que Z tenga 1
								    else
					    				 flag(0) <= '0';
     								 end if;
											
								    if(aux > full) then      
		   							 flag(1) <= '1';        -- Si la operacion excedio la capacidad del registro, que V tenga 1													
                            else
										 flag(1) <= '0';       
    			  					 end if;
											
								    if(aux < zero) then      
		   							 flag(2) <= '1';        -- Si la operacion resulto negativa que N tenga 1
					             else
										 flag(2) <= '0';				
					   			 end if;			
									
				end ADD;
				
				procedure SUB (signal REN1 : in std_logic_vector (7 downto 0);							-- Procedimiento para resta
									signal REN2 : in std_logic_vector (7 downto 0);
									signal flag : out std_logic_vector (2 downto 0);
			                  signal A    : out std_logic_vector (7 downto 0)) is
									
									begin
									
									aux(7 downto 0) <= (REN1 - REN2);	 -- Se resta REN1 con REN2
									A <= aux(7 downto 0);
									
									 if(aux = zero) then      
		   						    flag(0) <= '1';        -- Si la operacion tuvo 0 que Z tenga 1
								    else
					    				 flag(0) <= '0';
     								 end if;
											
								    if(aux > full) then      
		   							 flag(1) <= '1';        -- Si la operacion excedio la capacidad del registro, que V tenga 1													
                            else
										 flag(1) <= '0';       
    			  					 end if;
											
								    if(aux < zero) then      
		   							 flag(2) <= '1';        -- Si la operacion resulto negativa que N tenga 1
					             else
										 flag(2) <= '0';				
					   			 end if;
				
				end SUB;
				
				procedure MUL (signal REN1 : in std_logic_vector (7 downto 0);				-- Procedimiento para multiplicacion
									signal REN2 : in std_logic_vector (7 downto 0);
									signal flag : out std_logic_vector (2 downto 0);
			                  signal Am   : out std_logic_vector (15 downto 0)) is
									
									begin
									
									aux <= std_logic_vector( signed(REN1) * signed(REN2) );
									Am <= aux;
									
									 if(aux = zero) then      
		   						    flag(0) <= '1';        -- Si la operacion tuvo 0 que Z tenga 1
								    else
					    				 flag(0) <= '0';
     								 end if;
											
								    if(aux > full) then      
		   							 flag(1) <= '1';        -- Si la operacion excedio la capacidad del registro, que V tenga 1													
                            else
										 flag(1) <= '0';       
    			  					 end if;
											
								    if(aux < zero) then      
		   							 flag(2) <= '1';        -- Si la operacion resulto negativa que N tenga 1
					             else
										 flag(2) <= '0';				
					   			 end if;
				
				end MUL;
				
				procedure andS (signal REN1 : in std_logic_vector(7 downto 0);			-- Procedimiento para la instrucción de la compuerta lógica AND
                    signal REN2 : in std_logic_vector(7 downto 0);
                    signal A:out std_logic_vector(7 downto 0)) is 

                    begin 
                        aux(7 downto 0) <= (REN1 AND REN2);
                        A <= aux(7 downto 0);
				end andS;
				
				procedure notS (signal REN1 : in std_logic_vector(7 downto 0);			-- Procedimiento para la instrucción de la compuerta lógica NOT
							signal REN2 : in std_logic_vector(7 downto 0);
                    signal A:out std_logic_vector(7 downto 0)) is 

                    begin 
                        aux(7 downto 0) <= (NOT REN1);
                        A <= aux(7 downto 0);
				end notS;
				
				procedure norS (signal REN1 : in std_logic_vector(7 downto 0);			-- Procedimiento para la instrucción de la compuerta lógica NOR
                    signal REN2 : in std_logic_vector(7 downto 0);
                    signal A:out std_logic_vector(7 downto 0)) is 

                    begin 
                        aux(7 downto 0) <= (REN1 NOR REN2);
                        A <= aux(7 downto 0);
				end norS;
				
				procedure nandS (signal REN1 : in std_logic_vector(7 downto 0);		-- Procedimiento para la instrucción de la compuerta lógica NAND
                    signal REN2 : in std_logic_vector(7 downto 0);
                    signal A:out std_logic_vector(7 downto 0)) is 

                    begin 
                        aux(7 downto 0) <= (REN1 NAND REN2);
                        A <= aux(7 downto 0);
				end nandS;
				
				procedure xorS (signal REN1 : in std_logic_vector(7 downto 0);
                    signal REN2 : in std_logic_vector(7 downto 0);
                    signal A:out std_logic_vector(7 downto 0)) is 

                    begin 
                        aux(7 downto 0) <= (REN1 XOR REN2);
                        A <= aux(7 downto 0);
				end xorS;
				
				procedure xnorS (signal REN1 : in std_logic_vector(7 downto 0);		-- Procedimiento para la instrucción de la compuerta lógica XNOR
                    signal REN2 : in std_logic_vector(7 downto 0);
                    signal A:out std_logic_vector(7 downto 0)) is 

                    begin 
                        aux(7 downto 0) <= (REN1 XNOR REN2);
                        A <= aux(7 downto 0);
				end xnorS;
				
				procedure LDER (signal REN1 : in std_logic_vector(7 downto 0);			-- Procedimiento para la instrucción de corrimiento a la derecha
                    signal REN2 : in std_logic_vector(7 downto 0);
                    signal A:out std_logic_vector(7 downto 0)) is 

                    begin 
                        aux(6 downto 0) <= REN1(7 downto 1);							-- Copiamos los 6 bits menos significativos del registro REN1 a un registro auxiliar
                        aux(7) <= '0';															-- Asignamos 0 al bit mas significactivo del registro auxiliar	
								A <= aux(7 downto 0);												-- Copiamos los 8 bits mas significativos del registro auxiliar al registro A
				end LDER;

				procedure LIZQ (signal REN1 : in std_logic_vector(7 downto 0);			-- Procedimiento para la instrucción de corrimiento a la izquierda
                    signal REN2 : in std_logic_vector(7 downto 0);
                    signal A:out std_logic_vector(7 downto 0)) is 

                    begin 
                        aux(7 downto 1) <= REN1(6 downto 0);							-- Copiamos los 6 bits mas significativos del registro REN1 a un registro auxiliar
                        aux(0) <= '0';															-- Asignamos 0 al bit menos significactivo del registro auxiliar	
								A <= aux(7 downto 0);												-- Copiamos los 8 bits menos significativos del registro auxiliar al registro A
				end LIZQ;
				
				procedure LOR (signal REN1 : in std_logic_vector (7 downto 0);							-- Procedimiento para la instrucción de la compuerta lógica OR
									signal REN2 : in std_logic_vector (7 downto 0);
									signal flag : out std_logic_vector (2 downto 0);
			                  signal A    : out std_logic_vector (7 downto 0)) is
									
									begin
				
							       aux(7 downto 0) <= (REN1 OR REN2);
									 A <= aux(7 downto 0);
									 
									 if(aux = zero) then      
		   						    flag(0) <= '1';        -- Si la operacion tuvo 0 que Z tenga 1
								    else
					    				 flag(0) <= '0';
     								 end if;
											
								    if(aux > full) then      
		   							 flag(1) <= '1';        -- Si la operacion excedio la capacidad del registro, que V tenga 1													
                            else
										 flag(1) <= '0';       
    			  					 end if;
											
								    if(aux < zero) then      
		   							 flag(2) <= '1';        -- Si la operacion resulto negativa que N tenga 1
					             else
										 flag(2) <= '0';				
					   			 end if;
				
				end LOR;				     
									      			
		   end ALU_UC;

			