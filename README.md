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

----

#### AULA 02 - Utilizando nossos Objetos
Nos retornava null quando printávamos a nossa variável conta, pois ainda não a inicializamos. Para atribuir um valor a ela faremos assim:
    ContaCorrente conta = ContaCorrente();

Passamos os parênteses pois atributos são opcionais, podemos ou não inicializar uma variável dessa forma

Agora, se rodarmos o código novamente o resultado não será mais null, será uma instância da conta corrente.

----

##### Acessando Propriedades do objeto
Para acessar as propriedades colocamos nossa variável _conta_ seguida de um _ponto_ 

----

##### Atribuindo valor às Propriedades do objeto
Para atribuir um valor à uma pripriedade, após o nome da variável e o ponto, colocamos um sinal de igualdade e passamos o valor. Se for uma string, passamos entre aspas
    conta.titular = "Timóteo";

----

##### Imprimindo o valor às Propriedades do objeto
No print, após o nome da variável, passamos um _ponto_ e o atributo que desejamos acessar o valor
    print(conta.titular);

----

##### Atribuindo valor a cada Propriedade. Consigo imprimi-las apenas passando a variável ?
Tenhamos em mente o exemplo abaixo, onde para cada atributos definimos um valor. Repare que dentro do print não estamos passando a variavel _ponto_ o atributo, mas apenas a variável
    void main() {
        ContaCorrente conta = ContaCorrente();
        conta.titular = "Timóteo";
        conta.agencia = 123;
        conta.conta = 145;
        conta.saldo = 150.0;
        print(conta);
    }

Ao tentarmos rodar este código ele não irá imprimir de uma só vez todos os valores de atributos pertencentes àquela conta, em lugar disso só irá printar que ela é uma instância de ContaCorrente   

----

##### Acessando Propriedades e printando em uma string
Se fizermos da forma abaixo, só irá printar que a instância de ContaCorrente tem um atributo chamado "titular"
    print("Titular: $conta.titular");

A forma correta de fazer essa operação é imprimindo o objeto e o atributo dentro de chaves
    print("Titular: ${conta.titular}");

----

##### Valores padrão
Vamos supor que todas as contas correntes iniciam sempre com zero reais, com excessão de quando a pessoa no ato da abertura da conta já deseja depositar. Zero será o valor padrão. Para simularmos isso, criaremos uma nova instâcia para a conta da Amanda

    void main() {
        ContaCorrente contaDaAmanda = ContaCorrente();
        contaDaAmanda.titular = "Amanda";
        contaDaAmanda.agencia = 123;
        contaDaAmanda.conta = 1;
        contaDaAmanda.saldo = 0.0;

        print("Titular: ${contaDaAmanda.titular}");
        print("Agência: ${contaDaAmanda.agencia}");
        print("Conta: ${contaDaAmanda.conta}");
        print("Saldo: ${contaDaAmanda.saldo}");
    }
    class ContaCorrente {
        String titular;
        int agencia;
        int conta;
        double saldo;
    }

É igual à   

    void main() {
        ContaCorrente contaDaAmanda = ContaCorrente();
        contaDaAmanda.titular = "Amanda";
        contaDaAmanda.agencia = 123;
        contaDaAmanda.conta = 1;
        contaDaAmanda.saldo;

        print("Titular: ${contaDaAmanda.titular}");
        print("Agência: ${contaDaAmanda.agencia}");
        print("Conta: ${contaDaAmanda.conta}");
        print("Saldo: ${contaDaAmanda.saldo}");
    }
    class ContaCorrente {
        String titular;
        int agencia;
        int conta;
        double saldo = 0.0;
    }

Porém, caso não passarmos nenhum valor padrão à classe ContaCorrente e nem ao atributo saldo da instância ContaCorrenteAmanda, o saldo dela será Null. Para evitar isso é importante sempre inicializarmos os valores de nossos atributos, ao menos dos que já sabemos o valor

----

##### Igualdade entre objetos de duas classes
Criaremos dois objetos, porém com as mesmas informaçãoes em cada atributo

    
    ContaCorrente conta1 = ContaCorrente();
    conta1.titular = "Felipe";
    conta1.agencia = 123;
    conta1.conta = 1;

    ContaCorrente conta2 = ContaCorrente();
    conta2.titular = "Felipe";
    conta2.agencia = 123;
    conta2.conta = 1;

Se utilizarmos um operador de igualdade para comparar essas duas contas ele retornará que é *falso* afirmar que essas informações são iguais    
    print(conta1==conta2);

E ainda, se utilizarmos um operador de igualdade não para comparar ambas as contas, mas para comparar o valor dos atributos entre elas, ele retornará que é *verdade* afirmar que elas são iguais
    print(conta1.titular==conta2.titular);
    print(conta1.agencia==conta2.agencia);
    print(conta1.conta==conta2.conta);
    print(conta1.saldo==conta2.saldo);

Com isso, queremos dizer que os objetos em si não são iguais, porém as propriedades dos objetos não são iguais. Da mesma forma, podemos ter dois copos em nossa cozinha, que podem ser da mesma marca, da mesma cor e mesmo modelo, mas são objetos diferentes um do outro

Cada objeto no Dart tem uma informação chamada HasCode, que é como se fosse uma identificação daquele objeto. Para acessá-lo e verificarmos que objetos diferentes tem HashCodes diferentes fazemos como faríamos para acessar qualquer atributo
    print(conta1.hashCode);
    print(conta2.hashCode);

----
