import '../lib/contacorrente.dart';
import '../lib/cliente.dart';

void main() {

	ContaCorrente contaDaAmanda = ContaCorrente(123, 169874);
	ContaCorrente contaDoTiago = ContaCorrente(123, 169878);


	contaDaAmanda.saldo = -98;
	contaDaAmanda.agencia = -9874;
	print(ContaCorrente.totalDeContasCorrentes);
}

