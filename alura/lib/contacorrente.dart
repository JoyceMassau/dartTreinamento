import 'cliente.dart';

class ContaCorrente {

  ContaCorrente(int novaAgencia,this.conta) {
    if(novaAgencia > 0) _agencia = novaAgencia; 
    totalDeContasCorrentes++;
  }

	Cliente titular;
	int conta;
	double _saldo = 20.0;
	double chequeEspecial = -100.0;
	int _agencia = 145;
  static int totalDeContasCorrentes = 0;

	get agencia => _agencia;
	set agencia(int novaAgencia) { if(novaAgencia > 0) _agencia = novaAgencia; }

	get saldo {
		return _saldo;
	}

	set saldo(double novoSaldo) {
		if (novoSaldo >= chequeEspecial) {
			_saldo = novoSaldo;
		} else {
			print("Erro! Tentei modificar o valor de saldo para um valor menor que o cheque especial");
		}
	}

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