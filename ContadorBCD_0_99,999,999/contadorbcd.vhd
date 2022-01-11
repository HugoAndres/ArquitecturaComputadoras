-- Programa de contador BCD con decodificador 0 a 99,999,999
-- Elaborado por: Machorro Meléndez Hugo Andrés
-- Fecha: 9 de diciembre de 2021
	
	-- -----------------------------------------------
	--      Declaracion de bibliotecas
	-- -----------------------------------------------
	
	   Library ieee;
		use ieee.std_logic_1164.all;
		use ieee.std_logic_unsigned.all;
		
   --      Declaracion de entidad
	
	   entity contadorbcd is
		   
		       port ( 
				         clk, clr, start : in std_logic;
				         DisplayU : out std_logic_vector( 6 downto 0);
							DisplayD : out std_logic_vector( 6 downto 0);
							DisplayC : out std_logic_vector( 6 downto 0);
							DisplayUM : out std_logic_vector( 6 downto 0);
							DisplayDM : out std_logic_vector( 6 downto 0);
							DisplayCM : out std_logic_vector( 6 downto 0);
							DisplayUML : out std_logic_vector( 6 downto 0);
							DisplayDML : out std_logic_vector( 6 downto 0)
				       );	
		
		end entity;
		
   -- ------------------------------------------------
	--     Declaracion de arquitectura
	-- ------------------------------------------------
	
	    architecture data of contadorbcd is
		 
		    constant base_1Hz    : Integer := 60000; 		 -- Constante para 1Hz
			 signal count1Hz    : INTEGER range 0 to base_1Hz;  -- Señal para 1Hz
			     
			 signal contadorU ,contadorD, contadorC, contadorUM, contadorDM, contadorCM, contadorUML, contadorDML, contadorCML : std_logic_vector(3 downto 0) := "0000"; -- señal de conteo
			 signal clk1hz   : std_logic; 
			  			 			 
			 type state is (cero, mono);             -- Tipo para creacion de estados    
			 signal current_state, next_state: state;    -- señales tipo estado
			 
			 -- declaracion de constantes
			 
			 -- Declaracion de constantes para el display
		 
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
				constant OFF  : std_logic_vector(6 downto 0) := "1111111";     -- Display apagado
			 
		 
		    begin
	-- -------------------------------------------------		 
	--         Decodificador BCD
   -- -------------------------------------------------	
	
	     	with contadorU select
			   DisplayU <=  zero when "0000",  -- 00
						       uno  when "0001",  -- 01  
							    dos  when "0010",  -- 02
								 tres when "0011",  -- 03
								 quat when "0100",  -- 04
								 qint when "0101",  -- 05
								 sixt when "0110",  -- 06
								 sept when "0111",  -- 07
								 octo when "1000",  -- 08
								 nono when others;  -- 09
			with contadorD select
			   DisplayD <=  zero when "0000",  -- 00
						       uno  when "0001",  -- 01  
							    dos  when "0010",  -- 02
								 tres when "0011",  -- 03
								 quat when "0100",  -- 04
								 qint when "0101",  -- 05
								 sixt when "0110",  -- 06
								 sept when "0111",  -- 07
								 octo when "1000",  -- 08
								 nono when others;  -- 09
			with contadorC select
			   DisplayC <=  zero when "0000",  -- 00
						       uno  when "0001",  -- 01  
							    dos  when "0010",  -- 02
								 tres when "0011",  -- 03
								 quat when "0100",  -- 04
								 qint when "0101",  -- 05
								 sixt when "0110",  -- 06
								 sept when "0111",  -- 07
								 octo when "1000",  -- 08
								 nono when others;  -- 09
			with contadorUM select
			   DisplayUM <=  zero when "0000",  -- 00
						       uno  when "0001",  -- 01  
							    dos  when "0010",  -- 02
								 tres when "0011",  -- 03
								 quat when "0100",  -- 04
								 qint when "0101",  -- 05
								 sixt when "0110",  -- 06
								 sept when "0111",  -- 07
								 octo when "1000",  -- 08
								 nono when others;  -- 09
			with contadorDM select
			   DisplayDM <=  zero when "0000",  -- 00
						       uno  when "0001",  -- 01  
							    dos  when "0010",  -- 02
								 tres when "0011",  -- 03
								 quat when "0100",  -- 04
								 qint when "0101",  -- 05
								 sixt when "0110",  -- 06
								 sept when "0111",  -- 07
								 octo when "1000",  -- 08
								 nono when others;  -- 09
			with contadorCM select
			   DisplayCM <=  zero when "0000",  -- 00
						       uno  when "0001",  -- 01  
							    dos  when "0010",  -- 02
								 tres when "0011",  -- 03
								 quat when "0100",  -- 04
								 qint when "0101",  -- 05
								 sixt when "0110",  -- 06
								 sept when "0111",  -- 07
								 octo when "1000",  -- 08
								 nono when others;  -- 09
			with contadorUML select
			   DisplayUML <=  zero when "0000",  -- 00
						       uno  when "0001",  -- 01  
							    dos  when "0010",  -- 02
								 tres when "0011",  -- 03
								 quat when "0100",  -- 04
								 qint when "0101",  -- 05
								 sixt when "0110",  -- 06
								 sept when "0111",  -- 07
								 octo when "1000",  -- 08
								 nono when others;  -- 09
			with contadorDML select
			   DisplayDML <=  zero when "0000",  -- 00
						       uno  when "0001",  -- 01  
							    dos  when "0010",  -- 02
								 tres when "0011",  -- 03
								 quat when "0100",  -- 04
								 qint when "0101",  -- 05
								 sixt when "0110",  -- 06
								 sept when "0111",  -- 07
								 octo when "1000",  -- 08
								 nono when others;  -- 09
			
			
								
	-- -------------------------------------------------
	--     Proceso de conteo
	-- -------------------------------------------------
		        
states:  process(current_state, start, clk1hz)
            
           begin	

			    if clk1hz'  event and clk1hz = '1' then      -- Ejecucion secuencial con el reloj ralentizado 
				 
                case current_state is                     -- Declaracion de estados
					    
						 when cero =>                           -- Estado cero
						  
						  if start = '0' then                   -- Se presiono start?
						       next_state <= mono;              -- Si, saltar al estado uno
							 else
							    contadorU <= "0000";              -- No, reiniciar el contador
								 next_state <= cero;              -- Mantenerce en el estado cero
						  end if;
						  
						  when mono =>
								contadorU <= contadorU + "0001";
									if  contadorU = "1001" then         -- El contador llego a 9?
										contadorU <= "0000";
										contadorD <= contadorD + "0001";
										if contadorD = "1001" then
											contadorD <= "0000";
											contadorC <= contadorC + "0001";
											if contadorC = "1001" then
												contadorC <= "0000";
												contadorUM <= contadorUM + "0001";
												if contadorUM = "1001" then
													contadorUM <= "0000";
													contadorDM <= contadorDM + "0001";
													if contadorDM = "1001" then
														contadorDM <= "0000";
														contadorCM <= contadorCM + "0001";
														if contadorCM = "1001" then
															contadorCM <= "0000";
															contadorUML <= contadorUML + "0001";
															if contadorUML = "1001" then
																contadorUML <= "0000";
																contadorDML <= contadorDML + "0001";
																if contadorDML = "1001" then
																	contadorDML <= "0000";
																	next_state <= cero;            -- Si, regresar al estado cero
																end if;
															end if;
														end if;
													end if;
												end if;
											end if;
										end if;
									end if;
														  
						  when others =>
						 	 
                end case;	
	        			 
			    end if;	
				
			end process;			
-- -----------------------------------------------------------------
--        Proceso para saltar de estado en estado
-- -----------------------------------------------------------------			  
			  
Clock:      process(next_state, count1Hz, clk, clk1hz, clr)
              
             begin
				 
					 if clr = '0' then
					 
						 current_state <= cero;
						 
					 elsif (clk' event and clk = '1') then
						 
						  if count1Hz < base_1Hz then 
					             count1Hz <= count1Hz+1;
				        else
								 	 current_state <= next_state;
									 clk1hz <= not clk1hz;
									 count1Hz <= 0;
				        end if;	
									 
					 end if;

            end process;
			  
			  
		 end data;
			  
		 
