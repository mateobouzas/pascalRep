program cuadrado;

var suma_cuad,i,v1,v2 : integer;
   
BEGIN
  readln(v1, v2);
 
 suma_cuad:= 0;
FOR i := v1 TO v2 DO
   suma_cuad := suma_cuad + sqr(i);
   writeln(suma_cuad)
END.