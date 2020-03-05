# dartTreinamento
Este repositório objetiva concatenar o aprendizado de dart disponível em curso da Alura e pela comunidade Dart

#### Estrutura Básica do arquivo .dart

PS: se salvarmos o arquivo não com a extensão .dart, mas com a extensão .txt ele é executado também, porém não é adequado 

    void main() {
  
    }

----

#### Variáveis do tipo Double

Operações entre valores inteiros e double tem resultados do tipo Double
----

#### Variáveis do tipo String

Dart não faz distinção entre aspas simples ou duplas

----

#### Conversão de tipos de variáveis

É possível converter o valor de uma variável para outro tipo. Se você deseja transformar um valor de um tipo numérico para outro tipo numérico:
    double pi = 3.141592;
    int pi_inteiro = pi.toInt();

    int numeral = 100;
    double numeral_double = numeral.toDouble();

Agora, se você quer transformar um número de uma String para um tipo numérico, deve utilizar:

    double.parse(nome_da_variável);

    int.parse(nome_da_variável);

----

#### Operação Ternária: Condicional If simplificado

> O número é maior que 10? Se sim, faça X, se não, faça Y.

Podemos traduzir essa frase para nosso código da seguinte maneira:

    número > 10 ? X : Y;