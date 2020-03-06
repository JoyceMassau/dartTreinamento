void main() {
  ContaCorrente conta = ContaCorrente();
  conta.titular = "Timóteo";
  conta.agencia = 123;
  conta.conta = 145;
  conta.saldo = 150.0;

  ContaCorrente contaDaAmanda = ContaCorrente();
  contaDaAmanda.titular = "Amanda";
  contaDaAmanda.agencia = 123;
  contaDaAmanda.conta = 1;
  contaDaAmanda.saldo;

  print("Titular: ${contaDaAmanda.titular}");
  print("Agência: ${contaDaAmanda.agencia}");
  print("Conta: ${contaDaAmanda.conta}");
  print("Saldo: ${contaDaAmanda.saldo}");

  ContaCorrente conta1 = ContaCorrente();
  ContaCorrente conta2 = ContaCorrente();
 
  conta1.titular = "Felipe";
  conta1.agencia = 123;
  conta1.conta = 1;

  conta2.titular = "Felipe";
  conta2.agencia = 123;
  conta2.conta = 1;

  print(conta1.hashCode);
  print(conta2.hashCode);
  print(conta1.titular==conta2.titular);
  print(conta1.agencia==conta2.agencia);
  print(conta1.conta==conta2.conta);
  print(conta1.saldo==conta2.saldo);
}

class ContaCorrente {
  String titular;
  int agencia;
  int conta;
  double saldo = 30.0;
}