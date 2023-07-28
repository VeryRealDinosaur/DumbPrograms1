Algoritmo Programa_que_si_sirve_talvez_pregunta
	
	//Lectura
	Definir D1,D2,H1,H2,M1,M2 Como Real
	Escribir "Inserta el dia del mes de la hora A"
	Leer D1
	Escribir "Inserta el dia del mes de la hora B"
	Leer D2
	Escribir "Inserta la Hora A en formato de 24 horas, primero la hora y despues los minutos"
	Leer H1
	Leer M1
	Escribir "Inserta la Hora B en formato de 24 horas, primero la hora y despues los minutos"
	Leer H2
	Leer M2
	
	//D1=D2
	Si D1=D2 entonces
		//Conversion a Minutos
		A <- (H1*60)+M1
		B <- (H2*60)+M2
		
		//Resta
		X <- B-A
		
		//Conversion a Horas y Minutos
		H <- trunc (X/60)
		M <- ((X/60)-H)*60
		
		//Output
		Si H < 0 Entonces
			H <- H*(-1)
			M <- M*(-1)
			Escribir "Han transcurrido " H " Horas y " M " Minutos"
		FinSi
		
		Escribir "Faltan " H " Horas y " M " Minutos"
	FinSi
	
	//D1nD2
	Si D1<D2 entonces
		
		//Dia
		
		H2 <- H2 + (D2-D1)*24
		//Conversion a Minutos
		A <- (H1*60)+M1
		B <- (H2*60)+M2
		
		//Resta
		X <- B-A
		
		//Conversion a Horas y Minutos
		D <- trunc (X/1440)
		H <- trunc ((X/60)-(D*24))
		M <- ((X/60)- H -(D*24))*60
		
		//Output
		Si H < 0 Entonces
			H <- H*(-1)
			M <- M*(-1)
			Escribir "Han transcurrido " D " Dias " H " Horas y " M " Minutos"
		FinSi
		
		Escribir "Faltan " D " Dias " H " Horas y " M " Minutos"
	FinSi
	
	
FinAlgoritmo
