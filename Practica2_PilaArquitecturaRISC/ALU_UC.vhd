   -- Paquete de la ALU para SUMA, RESTA en operaciones aritmeticas
	-- Para AND para operaciones Logicas
	-- Elaborado por: J. Rivera Ortiz, C. Enrique Salinas Franco, V. Hugo Magaña Bautista, H. Andrés Machorro Meléndez, V. Manuel López Salazar, M. Castro Martínez, A. Romero Hernández.
	-- Fecha: 15 de noviembre de 2021
	
	      -- Declaracion de Bibliotecas		  
			library ieee;
			use ieee.std_logic_1164.all;
			use ieee.std_logic_signed.all;   -- Esta biblioteca es usada para operaciones con signo
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
									
				procedure andS(  signal REN1 : in std_logic_vector(7 downto 0);			-- Cabecera del procedimiento de la instrucción AND
                             signal REN2 : in std_logic_vector(7 downto 0);
									  signal flag : out std_logic_vector (2 downto 0);
                             signal A:out std_logic_vector(7 downto 0)
								  );						
			      	
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
				
				procedure andS ( signal REN1: in std_logic_vector(7 downto 0);			-- Procedimiento para la instrucción de la compuerta lógica AND
									  signal REN2 : in std_logic_vector(7 downto 0);
									  signal flag : out std_logic_vector (2 downto 0);
									  signal A:out std_logic_vector(7 downto 0)									 
									 ) is 

                    begin 
                        
								aux(7 downto 0) <= (REN1 AND REN2);
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
											    
					end andS;
		   end ALU_UC;

			