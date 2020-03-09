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

  Cliente tiago = Cliente()
  ..nome = "Tiago"
  ..cpf = "336.685.056-00"
  ..profissao = "Programador Dart";

  contaDoTiago.titular = tiago;
  
  print("Titular: ${contaDoTiago.titular.nome}");

}

