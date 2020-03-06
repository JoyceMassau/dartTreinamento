void main() {

  ContaCorrente contaDaAmanda = ContaCorrente();

  contaDaAmanda.titular = "Amanda";
  contaDaAmanda.agencia = 123;
  contaDaAmanda.conta = 1;
  contaDaAmanda.saldo;

  double saqueDaAmanda = 80.0;

  ContaCorrente contaDoTiago = ContaCorrente();
  double saqueDoTiago = 90.0;
  contaDoTiago.titular = "Tiago";

  print("Saldo da ${contaDaAmanda.titular}: ${contaDaAmanda.saldo}");
  if (contaDaAmanda.saldo - saqueDaAmanda < -100) {
    print("Sem Saldo suficiente");
  } else {
    print("Sacando $saqueDaAmanda reais");
    contaDaAmanda.saldo -= saqueDaAmanda;
  }
  print("Saldo da ${contaDaAmanda.titular}: ${contaDaAmanda.saldo}\n");


  print("Saldo da ${contaDoTiago.titular}: ${contaDoTiago.saldo}");
  if (contaDoTiago.saldo - saqueDoTiago < -100) {
    print("Sem Saldo suficiente");
  } else {
    print("Sacando $saqueDoTiago reais");
    contaDoTiago.saldo -= saqueDoTiago;
  }
  print("Saldo do ${contaDoTiago.titular}: ${contaDoTiago.saldo}");


  print("Titular: ${contaDaAmanda.titular}");
  print("Agência: ${contaDaAmanda.agencia}");
  print("Conta: ${contaDaAmanda.conta}");
  print("Saldo: ${contaDaAmanda.saldo}");

}

class ContaCorrente {
  String titular;
  int agencia;
  int conta;
  double saldo = 20.0;
}