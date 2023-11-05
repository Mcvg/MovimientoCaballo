Funcion validarPosiciones (tableroAjedrez, posicionHorizontal, posicionVertical )
	Si posicionHorizontal < 1 o posicionHorizontal > 8 o posicionVertical < 1 o posicionVertical >8 Entonces
		Escribir "Ingesó un número no válido en las posiciones"
	SiNo 			
		posicionCaballo(tableroAjedrez, posicionHorizontal, posicionVertical)
	Fin Si
Fin Funcion

Funcion nuevaPosicion ( tableroAjedrez )
	Escribir "¿Quiere ingresar una nueva posición de caballo? Escriba 1 para sí, 2 para no."
	Leer decision
	Segun decision Hacer
		1:
			Escribir "Ingrese una nueva posición del caballo: Ingrese la posición horizontal, un número de 1 a 8"
			Leer horizontal
			Escribir "Ingrese la posición vertical, un número de 1 a 8"
			Leer vertical
			validarPosiciones(tableroAjedrez, horizontal, vertical)
			nuevaPosicion(tableroAjedrez)
		2:
			Escribir "Gracias por utilizar el algoritmo"
			
		De Otro Modo:
			Escribir "Ingresó un valor incorrecto"		
			
	FinSegun
	
	
Fin Funcion

Funcion posicionCaballo ( tableroAjedrez, posicionHorizontal, posicionVertical )
	Dimension moverHorizontal[8]
	moverHorizontal[1] <- -1
	moverHorizontal[2] <- 1
	moverHorizontal[3] <- 2
	moverHorizontal[4] <- 2
	moverHorizontal[5] <- 1
	moverHorizontal[6] <- -1
	moverHorizontal[7] <- -2
	moverHorizontal[8] <- -2
	Dimension moverVertical[8]
	moverVertical[1] <- 2
	moverVertical[2] <- 2
	moverVertical[3] <- 1
	moverVertical[4] <- -1
	moverVertical[5] <- -2
	moverVertical[6] <- -2
	moverVertical[7] <- -1
	moverVertical[8] <- 1
	
	numeroPosiciones <- 0;
	Escribir "Las posiciones a las que el caballo puede ir son: "
	Para i<-1 Hasta 8 Con Paso 1 Hacer
		
		Si (posicionHorizontal +  moverHorizontal[i] >=1 & posicionHorizontal + moverHorizontal[i] <=8) & (posicionVertical+ moverVertical[i] >=1 & posicionVertical +  moverVertical[i] <=8) Entonces
			numeroPosiciones = numeroPosiciones +1;
			Escribir Sin Saltar tableroAjedrez[posicionVertical + moverVertical[i] ,posicionHorizontal +  moverHorizontal[i]] + " "
		Fin Si
	Fin Para
	
	Escribir ""
	Escribir "En total el caballo tiene para desplazarse: " , numeroPosiciones, " posiciones desde la celda: ", tableroAjedrez[posicionVertical, posicionHorizontal]
	
Fin Funcion

Funcion llenarMatriz ( tableroAjedrez )
	Dimension horizontal[8] 
	horizontal[1] <- "a"
	horizontal[2] <- "b"
	horizontal[3] <- "c"
	horizontal[4] <- "d"
	horizontal[5] <- "e"
	horizontal[6] <- "f"
	horizontal[7] <- "g"
	horizontal[8] <- "h"
	Dimension vertical[8] 
	vertical[1] <- "8"
	vertical[2] <- "7"
	vertical[3] <- "6"
	vertical[4] <- "5"
	vertical[5] <- "4"
	vertical[6] <- "3"
	vertical[7] <- "2"
	vertical[8] <- "1"
	Para i<-1 Hasta 8 Con Paso 1 Hacer
		Para j<-1 Hasta 8 Con Paso 1 Hacer
			tableroAjedrez[j,i] <- (horizontal[i]  + vertical[j])
		Fin Para
	Fin Para
	
Fin Funcion


Algoritmo movimientoCaballo
	Dimension tableroAjedrez[8,8]
	llenarMatriz(tableroAjedrez)
	
	Para i<-1 Hasta 8 Con Paso 1 Hacer
		Para j<-1 Hasta 8 Con Paso 1 Hacer
			Escribir Sin Saltar tableroAjedrez[i,j] + " "
		Fin Para
		Escribir ""
	Fin Para
	posicionHorizontal <- 4
	posicionVertical <- 5
	posicionCaballo(tableroAjedrez, posicionHorizontal, posicionVertical)
	nuevaPosicion(tableroAjedrez)
FinAlgoritmo
