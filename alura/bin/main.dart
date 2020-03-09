import '../lib/contacorrente.dart';
import '../lib/cliente.dart';

void main() {

	ContaCorrente contaDaAmanda = ContaCorrente(-123, 169874);
	//ContaCorrente contaDoTiago = ContaCorrente();

	contaDaAmanda.saldo = -98;
	contaDaAmanda.agencia = -9874;
	print(contaDaAmanda.saldo);
	print(contaDaAmanda.agencia);
}

