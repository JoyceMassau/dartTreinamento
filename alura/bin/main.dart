import '../lib/contacorrente.dart';
import '../lib/cliente.dart';

void main() {

  ContaCorrente contaDaAmanda = ContaCorrente();
  ContaCorrente contaDoTiago = ContaCorrente();

  Cliente amanda = Cliente();
  amanda.nome = "Amanda";
  amanda.cpf = "123.456.789-00";
  amanda.profissao = "Programadora Dart";

  contaDaAmanda.titular = amanda;

  print("Titular: ${contaDaAmanda.titular.nome}");
  print("Titular: ${contaDaAmanda.titular.cpf}");
  print("Titular: ${contaDaAmanda.titular.profissao}");

  /*
  contaDaAmanda.agencia = 123;
  contaDaAmanda.conta = 1;
  contaDaAmanda.saldo;
  contaDaAmanda.chequeEspecial = -110.0;
  */
}

