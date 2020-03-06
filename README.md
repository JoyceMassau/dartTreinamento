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

#### Cifrão seguido de chaves dentro de uma string
Tudo que tiver um cifrão seguido de chaves dentro de uma string o Dart vai calcular antes de imprimir na tela, pois são valores que ainda não foram definidos, como no exemplo abaixo, onde não foi necessário definir uma variável "$resultado", pois ele só vai imprimir na tela o resultado da multiplicação após passar por todos os laços de repetição, atribuindo o resultado à multiplicação das duas variáveis
    for(int contador=1;contador<=10;contador++) {
        int resultado = multiplicando * contador;
        print("$multiplicando * $contador = {$multiplicando * $contador}");
    }

-------------

### Alura Dart: Dominando a Orientação a Objetos

> Diagrama de classes:

| ContaCorrente |
| ------------- |
| `titular`   *String* |
| `agencia`   *int* |
| `conta`   *int* |
| `saldo`   *double* |

- **saldo:** Não devemos nunca usar ponto flutuante para representar valores monetários. Utilize double

+ Instalar plugin do Dart para Visual Studio Code
+ Ctrl + Shift + P
    + Dart: new Project
        + Caso apareça a mensagem  _"stagehand need to be installed with 'pub global activate stagehand' to use this feature"_, clique para ativar o Stagehand para que possa utilizar esse recurso de criar projetos dessa forma
        + Console Application
        + Defina o nome do projeto
        + Escolha onde deseja salvar o projeto
        + Na solução criada há arquivos que fogem ao escopo do curso. Apague os seguintes arquivos: 
            + *alura_test.dart*, dentro da pasta _test_
            + *alura.dart*, dentro da pasta _lib_
            + De no arquivo *main.dart*, dentro da pasta _bin_, apague todo o conteúdo do arquivo e escreva a estrutura básica do projeto de Dart: void main() { }

Vamos iniciar, já pensando em conta corrente. Vamos supor que Gabriel deseja depositar R$2,00 em sua conta corrente. Todas as informações conforme abaixo serão atualizadas no arquivo main.dart, dentro da pasta bin

| ContaCorrente |  |
| ------------- | ------------- |
| `titular`   String | Gabriel |
| `agencia`   int | 123 |
| `conta`   int | 145 |
| `saldo`   double | 2 |


Devemos criar nossa classe fora da Main, pois precisamos criar a classe fora de um espaço reservado de uma função

Para criar um objeto da classe ContaCorrente fazemos: *ContaCorrente conta;*

----

#### Resumo da primeira aula 
- No arquivo main.dart, dentro da pasta bin, criamos o código abaixo, que retorna Null

    void main() {
        ContaCorrente conta;
        print(conta);
    }
    class ContaCorrente {
        String titular;
        int agencia;
        int conta;
        double saldo;
    }
