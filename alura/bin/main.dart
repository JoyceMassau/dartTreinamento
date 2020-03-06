void main() {

  ContaCorrente contaDaAmanda = ContaCorrente();

  contaDaAmanda.titular = "Amanda";
  contaDaAmanda.agencia = 123;
  contaDaAmanda.conta = 1;
  contaDaAmanda.saldo;

  ContaCorrente contaDoTiago = ContaCorrente();
  contaDoTiago.titular = "Tiago";
/*
  print("Titular: ${contaDaAmanda.titular}");
  print("Agência: ${contaDaAmanda.agencia}");
  print("Conta: ${contaDaAmanda.conta}");
  print("Saldo: ${contaDaAmanda.saldo}\n");
*/
  print("Saldo da ${contaDaAmanda.titular}: ${contaDaAmanda.saldo}");
  contaDaAmanda.deposito(130.0);
  contaDaAmanda.saque(20.0);
  print("Saldo da ${contaDaAmanda.titular}: ${contaDaAmanda.saldo}");

}

class ContaCorrente {
  String titular;
  int agencia;
  int conta;
  double saldo = 20.0;

  void saque(double valorDoSaque) {
    print("Saldo da ${this.titular}: ${this.saldo}");
    if (this.saldo - valorDoSaque < -100) {
      print("Sem Saldo suficiente");
    } else {
      print("Sacando $valorDoSaque reais");
      this.saldo -= valorDoSaque;
    }
    print("Saldo da ${this.titular}: ${this.saldo}\n");
  }

  double deposito(double ValorDoDeposito) {
    this.saldo += ValorDoDeposito;
    return this.saldo;
  }
  
}