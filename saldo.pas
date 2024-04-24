program saldoo;
var
  tipo: char;
  saldo, deposito, retiro: real;

begin
  writeln('Ingrese saldo de la cuenta');
  readln(saldo);

  while tipo <> 'x' do
  begin
    writeln('Ingrese "d" para depositar, "r" para retirar o "x" para salir');
    readln(tipo);
  
    if tipo = 'd' then
    begin
      writeln('Ingrese monto a depositar: ');
      readln(deposito);
      saldo := saldo + deposito;
      writeln('Saldo actual: ', saldo:0:2);
    end
    else if tipo = 'r' then
    begin
      writeln('Ingrese monto a retirar: ');
      readln(retiro);
      saldo := saldo - retiro;
      writeln('Saldo actual: ', saldo:0:2);
    end;
    writeln(tipo,' ', saldo:0:2);
  end;
end.
