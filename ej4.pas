//. Suponga que se ingresa una secuencia de numeros enteros positivos que debe ser leıda de la entrada estandar. //
//La secuencia contiene al menos un numero entero positivo y se indica su fin con el entero -1.//
//(a) determine la suma y el promedio de todos losenteros positivos leıdos. Exhiba ambos resultados en la salida estandar. //
//determine el numero mas grande y el mas pequeno de los N positivos leıdos. Exhiba ambos resultados en la salida estandar.//

program p5ejercicio4;

var
num, max, min, numInput, prom, contador : integer;

begin
 contador := 0;
 min := 0;
 max := 0;
 numInput := 0;

 repeat
   writeln('ingrese num');
   read(num);
   if num > 0 then
    begin
     contador := contador + num;
     if num > max then
     max := num;
     if (num < min) or (min = 0) then
     min := num;
     numInput := numInput + 1;
    end;
 until num = -1;

 prom := (contador div numInput);

 writeln(contador);
 writeln('el numero min ingresado:', min);
 writeln('el numero max ingresado:', max);
 writeln('promedio:', prom);
end.