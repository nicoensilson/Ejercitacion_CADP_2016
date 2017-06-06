{Se lee una secuencia de caracteres terminada en “?”. 
La secuencia está dividida en oraciones que finalizan en “.”. 
Las oraciones están divididas en palabras. Las palabras pueden estar 
separadas por uno o más blancos. Informar:
El porcentaje de oraciones leídas que comienzan con “L”.
La cantidad de palabras por oración que finalizan en “!”.
La cantidad total de palabras que empiezan con “P” y finalizan con “R”.}

Program Ej_07;
Var
	cantPal:integer; {Contador de palabras}
	car, ant:char;
Begin
  cantPal:=0;         
  read(car);
  while (car = ' ') do  {Descarto blancos}
    read(car); 
  while (car <> '.') do begin
    if (car = 'P') then begin   {Leo el resto de la palabra}
      while (car <> '.') and (car <> ' ' ) do begin
        ant:=car;
        read(car);
      end;
      if (ant = 'R') then {Si la ultima letra fue una S cuento la palabra}
        cantPal:=cantPal+1;
    end
    else 
      while (car <> '.') and (car <> ' ' ) do  
        read(car);
    while (car = ' ') do    {Descarto blancos}  
      read(car); 
  end;
  writeln('La cantidad de palabras es: ', cantPal);
end.