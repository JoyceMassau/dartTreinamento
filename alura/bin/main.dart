void main() {

  ContaCorrente contaDaAmanda = ContaCorrente();

  contaDaAmanda.titular = "Amanda";
  contaDaAmanda.agencia = 123;
  contaDaAmanda.conta = 1;
  contaDaAmanda.saldo;
  contaDaAmanda.chequeEspecial = -110.0;

  ContaCorrente contaDoTiago = ContaCorrente();
  contaDoTiago.titular = "Tiago";

  print("Saldo da ${contaDaAmanda.titular}: ${contaDaAmanda.saldo}");
  print("Saldo da ${contaDoTiago.titular}: ${contaDoTiago.saldo}");

  bool sucesso = contaDaAmanda.transferencia(20.0, contaDoTiago);
  print(sucesso);
  print("Saldo da ${contaDaAmanda.titular}: ${contaDaAmanda.saldo}");
  print("Saldo da ${contaDoTiago.titular}: ${contaDoTiago.saldo}");
}

class Cliente {
  String nome;
  String cpf;
  String profissao;
}

class ContaCorrente {
  Cliente titular;
  int agencia;
  int conta;
  double saldo = 20.0;
  double chequeEspecial = -100.0;

  bool verificaSaldo(double valor) {
    if (this.saldo - valor < chequeEspecial) {
      print("Sem saldo suficiente");
      return false;
    } else {
      print("Movimentando $valor reais");
      return true;
    }
  }

  bool transferencia(double valorDeTransferencia, ContaCorrente contaDestino) {
    if (!verificaSaldo(valorDeTransferencia)) {
      return false;
    } else {
      this.saldo -= valorDeTransferencia;
      contaDestino.deposito(valorDeTransferencia);
      return true;
    }
  }
  
  bool saque(double valorDoSaque) {
    if (!verificaSaldo(valorDoSaque)) {
      return false;
    } else {
      this.saldo -= valorDoSaque;
      return true;
    }
  }

  double deposito(double ValorDoDeposito) {
    this.saldo += ValorDoDeposito;
    return this.saldo;
  }
  
}