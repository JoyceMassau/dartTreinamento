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

  ContaCorrente contaDoTiago = ContaCorrente();
  contaDoTiago.titular = "Tiago";
  contaDoTiago.agencia = 123;
  contaDoTiago.conta = 2;

  print("Conta: ${contaDoTiago.conta}");
  print("Saldo: ${contaDoTiago.saldo}");
}
class ContaCorrente {
  String titular;
  int agencia;
  int conta;
  double saldo = 30.0;
}