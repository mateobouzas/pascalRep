program triangulo;

var base_triangulo, altura_triangulo, area_triangulo : real;

procedure LeerDatos(var base,altura : real);
    begin

        Write('Ingrese base del triangulo: ');
        ReadLn(base);
  
        Write('Ingrese altura del triangulo: ');
        ReadLn(altura);

    end; 


function CalcularAreaTriangulo(base,altura : real) : real;
   begin
        CalcularAreaTriangulo:= base * altura / 2;
   end; 

procedure MostrarResultado(area : real);


   begin
         WriteLn;
         WriteLn( ' ***********');
         WriteLn( ' El area del triangulo es: ', area:8:2);
         WriteLn( ' ***********');
         WriteLn;
   end;

(* programa principal *)
(* programa principal *)
(* programa principal *)
(* programa principal *)
begin 
LeerDatos(base_triangulo,altura_triangulo);
area_triangulo:= CalcularAreaTriangulo(base_triangulo,altura_triangulo);
MostrarResultado(area_triangulo);
end.


