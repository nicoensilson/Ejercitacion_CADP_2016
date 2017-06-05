{Se lee una secuencia de caracteres terminada en “%”. La secuencia 
está dividida en palabras, separadas por uno o más blancos. 
Informar la cantidad de palabras que finali%an con “S” o “s”}

program Ej_05;
var
	cantPal:integer; {Contador de palabras}
	car, ant:char;
begin
  cantPal:=0;         
  read(car);
  while (car = ' ') do  {Descarto blancos}
    read(car); 
  while (car <> '.') do begin
    if (car <> ' ') then begin    
        ant:=car;
        read(car);
      if (ant = 'S') or (ant = 's') then {Si la ultima letra fue una S o s cuento la palabra}
        cantPal:=cantPal+1;
    end
    else 
      while (car <> '.') and (car <> ' ') do  
        read(car);
    while (car = ' ') do    {Descarto blancos}  
      read(car); 
  end;
  writeln('La cantidad de palabras es: ', cantPal);
end.