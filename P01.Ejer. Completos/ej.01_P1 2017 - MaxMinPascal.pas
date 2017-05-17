{1.Realizar un programa que lea 2 números enteros desde teclado e 
informe en pantalla cuál de los dos números es el mayor. 
Si son iguales debe informar en pantalla lo siguiente: 
“Los números leídos son iguales”.}

program Prac1.Ej1
var
	num1,num2 : integer;
	num.max : real;
begin
	Read(num1);
	Read(num2);
	if (num1 > num2) then begin
		num.max := num1;
		writeln ("El numero maximo es: " ,num.max)
		if (num2 > num1) then
			num.max := num2
			writeln ("El numero maximo es: " ,num.max)
		else
			writeln ("Los numero leídos son	iguales”")
		end
		end.
