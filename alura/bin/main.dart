import '../lib/contacorrente.dart';
import '../lib/cliente.dart';

void main() {

	ContaCorrente contaDaAmanda = ContaCorrente();
	ContaCorrente contaDoTiago = ContaCorrente();

	contaDaAmanda.saldo = -98;
	print(contaDaAmanda.saldo);
}

