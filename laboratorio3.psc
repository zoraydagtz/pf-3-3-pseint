//Actualizar cada una de las opciones para que sean subprocesos separados

Funcion result<-sumar(numbers, cantidad)
	Definir result Como Real;
	Definir i Como Entero;
	result<-  numbers[0];
	
	Para i <- 1 Hasta cantidad-1 Hacer
		result<-result + numbers[i];
	FinPara
	
FinFuncion


Funcion result<-restar(numbers, cantidad)
	Definir result Como Real;
	Definir i Como Entero;
	result<- numbers[0];
	
	Para i <- 1 Hasta cantidad-1 Hacer
		result<-result - numbers[i];
	FinPara
	
FinFuncion


Funcion result<-dividir(numbers, cantidad)
	Definir result Como Real;
	Definir i Como Entero;
	result<- numbers[0];
	
	Para i <- 1 Hasta cantidad-1 Hacer
		result<-result / numbers[i];
	FinPara
	
FinFuncion


Funcion result<-multiplicar(numbers, cantidad)
	Definir result Como Real;
	Definir i Como Entero;
	result<-  numbers[0];
	
	Para i <- 1 Hasta cantidad-1 Hacer
		result<-result * numbers[i];
	FinPara
	
FinFuncion

//El funcionamiento de tu calculadora debe ser igual, solo que ahora con las operaciones separadas en subprocesos
SubProceso  Calculadora
	Definir Opc, cantidadNumeros, i Como Entero;
	Definir numbers, resultado Como Real;
	Definir Respuesta Como Cadena;
	Dimensionar numbers[10];
	
	Repetir
		Escribir "¿Quieres hacer una operacion matematica? si/no";
		Leer Respuesta;
		Si Respuesta=="si" Entonces
			Escribir "Elige el numero de la opcion que desees: ";
			Escribir "1 Sumar ";
			Escribir "2 Restar";
			Escribir "3 Dividir";
			Escribir "4 Multiplicar";
			Leer Opc;
			
			Si Opc==3
				Imprimir "Tus numeros deben ser mayores a cero";
			FinSi
			
			Escribir "¿Cuántos números quieres operar?";
			Leer cantidadNumeros;
			
			Para i <- 0 Hasta cantidadNumeros-1 Hacer
				Escribir "Escribe el número ", i+1;
				Leer numbers[i];
			FinPara
			
			
			Segun Opc Hacer
				1: resultado <- sumar(numbers, cantidadNumeros);
				2: resultado <- Restar(numbers, cantidadNumeros);
				3: resultado <- Dividir(numbers, cantidadNumeros);
				4: resultado <- Multiplicar(numbers, cantidadNumeros);
			FinSegun
			
			Imprimir "El resultado es: ", + resultado;
		FinSi
		
	Hasta Que Respuesta == "no";
	Imprimir "Calculadora apagada";	
	
FinSubProceso



Algoritmo laboratorio3
	
	
	Calculadora;
	
	
FinAlgoritmo

