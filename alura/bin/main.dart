import '../lib/contacorrente.dart';
import '../lib/cliente.dart';

void main() {

  ContaCorrente contaDaAmanda = ContaCorrente();
  ContaCorrente contaDoTiago = ContaCorrente();

  contaDaAmanda.definirSaldo(-102);

  print(contaDaAmanda.obterSaldo());
}

