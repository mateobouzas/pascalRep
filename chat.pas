program LeerCaracteres;

const
  SEPARADOR = ' ';
  FINALIZADOR = '.';

var
  caracter : Char;
  largo, cantPalabras, masCorta, masLarga : integer;
  fin : boolean;

begin
  cantPalabras := 0;
  masCorta := 0; 
  masLarga := 0;

  Write('Ingresa una oracion: ');
  repeat
    Read(caracter);
    if (caracter <> SEPARADOR) and (caracter <> FINALIZADOR) then
    begin
      largo := 0;
      fin := false;
      repeat
        largo := largo + 1;

          Read(caracter);
        if (caracter = SEPARADOR) or (caracter = FINALIZADOR) then
          fin := true;
      until fin;
      
      cantPalabras := cantPalabras + 1;

      if largo > masLarga then
        masLarga := largo;
      if (largo < masCorta) or (masCorta = 0) then
        masCorta := largo;
    end;
  until caracter = FINALIZADOR;

  Writeln;
  Writeln('La palabra más larga tiene ', masLarga, ' caracteres');
  Writeln('La palabra más corta tiene ', masCorta, ' caracteres');
  Writeln('La cantidad de palabras es: ', cantPalabras);
  ReadLn;
end.
