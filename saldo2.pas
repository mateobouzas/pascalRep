program saldovich;

var
  saldoInicial, saldoActual, transaccion: real;
  tipoTransaccion: char;

begin
  // Leer el saldo inicial de la cuenta
  writeln('Ingrese el saldo inicial de la cuenta:');
  readln(saldoInicial);
  saldoActual := saldoInicial;

  // Procesar las transacciones
  repeat
    // Leer el tipo de transacción y el valor
    writeln('Ingrese el tipo de transaccion (D para deposito, R para retiro, X para finalizar):');
    readln(tipoTransaccion);

    if tipoTransaccion = 'X' then
      break; // Salir del bucle si el tipo de transacción es 'X'

    writeln('Ingrese el monto de la transaccion:');
    readln(transaccion);

    // Actualizar el saldo actual según el tipo de transacción
    case tipoTransaccion of
      'D': saldoActual := saldoActual + transaccion; // Deposito
      'R': saldoActual := saldoActual - transaccion; // Retiro
    else
      writeln('Tipo de transaccion invalido. Por favor, ingrese D para deposito, R para retiro o X para finalizar.');
    end;

  until tipoTransaccion = 'X';

  // Mostrar el saldo final de la cuenta
  writeln('Saldo inicial de la cuenta: ', saldoInicial:0:2);
  writeln('Saldo final de la cuenta: ', saldoActual:0:2);
end.
