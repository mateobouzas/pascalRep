program ContarPalabrasTerminadas;

var
  letra: Char;
  oracion: Char;
  contador: Integer;
  enPalabra: Boolean;
begin
  
  repeat
  writeln('Letra: ');
  readln(letra);
  
  
  writeln('Oración: ');
  contador := 0;
  enPalabra := False;
  while true do
  begin
    read(oracion);
    if (oracion = ' ') or (oracion = '.') then
    begin
      if enPalabra  then
        contador := contador + 1;
      if oracion = '.' then
        break;
      enPalabra := False;
    end
    else
    begin

      enPalabra := True;
    end;
  end;
  
  writeln('La oración tiene ', contador, ' palabras que terminan con ', letra);
end.
