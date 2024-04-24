program contador;

const
  SEPARADOR = ' ';
  FINALIZADOR = '.';
  
procedure leerPalabraLargo(var largo: Integer; var fin: Boolean);
var
  caracter: Char;
begin
  largo := 0;
  fin := false;
  repeat
    read(caracter);
    if (caracter <> SEPARADOR) and (caracter <> FINALIZADOR) then

      largo := largo + 1;

      if caracter = FINALIZADOR then
        fin := true;

  until fin or (caracter = SEPARADOR);
end;

procedure leerOracionDatos(var cantPalabras, masLarga, masCorta: Integer);
var

  largo: Integer;
  fin: Boolean;
begin
  cantPalabras := 0;
  masLarga := 0;
  masCorta := 0;

  repeat
    leerPalabraLargo(largo, fin);

      cantPalabras := cantPalabras + 1;
      if largo > masLarga then
        masLarga := largo;
      if (largo < masCorta) or (masCorta = 0) then
        masCorta := largo;

  until fin;
end;

var
  cantPalabras, masLarga, masCorta: Integer;

begin
  leerOracionDatos(cantPalabras, masLarga, masCorta);
  writeln('Cantidad de palabras:', cantPalabras);
  writeln('Longitud de la palabra mas larga:', masLarga);
  writeln('Longitud de la palabra mas corta:', masCorta);
end.
