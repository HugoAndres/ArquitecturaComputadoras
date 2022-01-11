----	Programa de control de sincronia		----
----	Modificado por:	U581
----	Diseñado Originalmente por:	Anton
----	Fecha:	18 de Enero de 2021


	----  Declaracion de Bibliotecas   ----
	
		Library ieee;
		use ieee.std_logic_1164.all;
		use ieee.numeric_std.all;
		use work.ctrl.all;
		
	----	Declaracion de la Entidad	----
		
		Entity SYNC is
		
			Port(
					
					CLK:	IN	std_logic;										--	Reloj de control de 108MHz
					HSYNC, VSYNC:	OUT std_logic;							--	Control de la sincronia
					R, G, B:	OUT std_logic_vector(7 downto 0);		--Control de canales de color
					KEYS: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
					S: IN STD_LOGIC_VECTOR(1 downto 0)
					
				 );
				
		end SYNC;
		
	----	Declaracion de la Arquitectura	----	
	
		Architecture MAIN of SYNC is
		-----1280x1024 @ 60 Hz pixel clock 108 MHz
		--	Declaracion de la posicion de pixeles	--
		
		Signal RGB: STD_LOGIC_VECTOR(7 downto 0);
		Signal SQ_X1,SQ_Y1: INTEGER RANGE 0 TO 1688 := 500;	--	Coordenadas para el procedimiento 1
		Signal SQ_X2,SQ_Y2: INTEGER RANGE 0 TO 1688 := 600;	--	Coordenadas para el procedimiento 2
		Signal DRAW1,DRAW2:STD_LOGIC;						--	Señales para dibujar
		Signal HPOS: integer Range 0 to 1688 := 0;	--	Posicion horizontal
		Signal VPOS: integer Range 0 to 1066 := 0;	--	Posicion vertical
				
		Begin
				
				SQ(HPOS,VPOS,SQ_X1,SQ_Y1,RGB,DRAW1);
				SQ(HPOS,VPOS,SQ_X2,SQ_Y2,RGB,DRAW2);
				
				Process (CLK)								--	Proceso secuencial
				
					Begin
							
						 If (CLK'Event and CLK = '1') then	   --	Control del reloj
						-- El numero para empezar a graficar es 400 y termina en 1688 en horizontal
						--	El numero para empezar a graficar es del 42 al 1066 en vertical
						
						
						 --	Trama del dibujo	---	
								
								If(DRAW1='1') then
									If(S(0)='1')then
										R <= "11111111";
										G <= "11111111";
										B <= (Others => '0');
									Else
										R <=(others => '1' );
										G <=(others => '1' );
										B <=(others => '1' );
									End If;
								End If;	
							
							   If(DRAW2='1') then
									If(S(1)='1') then
										R <= (Others => '0');
										G <= "00110011";
										B <= "11111111";
									Else
										R<=(others => '1');
										G<=(others => '1');
										B<=(others => '1');
									End If;
								End If;
								
								If (DRAW1='0' AND DRAW2='0') then
									R<=(others => '0' );
									G<=(others => '0' );
									B<=(others => '0' );
								End if;
								
								If (HPOS<1688) then
									HPOS<=HPOS+1;
								Else
									HPOS<=0;
									
									If (VPOS<1066) then
										 VPOS<=VPOS+1;
									Else
										 VPOS<=0; 
										 If (S(0)='1') then
											 If(KEYS(0)='0') then
												 SQ_X1<=SQ_X1+5;
											 End If;
											 
											 If(KEYS(1)='0') then
												 SQ_X1<=SQ_X1-5;
											 End If;
						  
											 If(KEYS(2)='0') then
											    SQ_Y1<=SQ_Y1-5;
											 End If;
										
											 If(KEYS(3)='0') then
												 SQ_Y1<=SQ_Y1+5;
											 End If;  
										  End If;
										  
										  If (S(1)='1') then
											 If (KEYS(0)='0') then
												  SQ_X2<=SQ_X2+5;
											 End If;
											 
											 If (KEYS(1)='0') then
												  SQ_X2<=SQ_X2-5;
											 End If;
											 
											 If (KEYS(2)='0') then
												  SQ_Y2<=SQ_Y2-5;
											 End If;
											 
											 If (KEYS(3)='0') then
												  SQ_Y2<=SQ_Y2+5;
											 End If; 
										  End If;  
								   End If;
								End If;
							  
							    --++++	Pulso de sincronia  --++++
						 --	Sincronia Horizontal, y vertical donde no hay pulso
						 		
								If	( HPOS > 48 and HPOS < 160 ) then	
									HSYNC <= '0';
								Else
									HSYNC	<= '1';
								End If;
								
								If (VPOS > 0 and VPOS < 4) then
									VSYNC <= '0';
								Else
									VSYNC	<= '1';
								End If;
						 ------------------------------------------------
					------	Sin esto, no se puede comunicar con el monitor	-----	
									
				
						 
						    
							
						 End If;
										
				End Process;
					
					
		
		End MAIN;
		
		