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
| `titular`   *Cliente* |
| `agencia`   *int* |
| `conta`   *int* |
| `saldo`   *double* |
| `chequeEspecial`   *double* |

| Cliente |
| ------------- |
| `nome`   *String* |
| `cpf`   *String* |
| `profissao`   *String* |

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

#### AULA 03 - Criando métodos
Supondo que a Amanda deseja sacar dinheiro. Se ela sacar R$20,00 terá atingido o limite dela. Vamos supor que ela possui R$100,00 de cheque especial. que é o que o banco dá de empréstimo para irmos além do limite da conta bancária
- A Amanda tendo R$20,00, se quiser sacar R$80,00, o saldo dela ficaria com -60
Para passarmos isso ao código, vamos definir quanto vai ser o saque que Amanda vai fazer
    double saque = 80.0;

Para verificarmos se essa operação vai ser validada, considerando um cheque especial de R$100,00, precisamos pensar nessa condição. O resultaddo será -60
    void main() {
        ContaCorrente contaDaAmanda = ContaCorrente();
        contaDaAmanda.titular = "Amanda";

        double saque = 80.0;
        print("Saldo da ${contaDaAmanda.titular}: ${contaDaAmanda.saldo}");
        if (contaDaAmanda.saldo - saque < -100) {
            print("Sem Saldo suficiente");
        } else {
            print("Sacando $saque reais");
            contaDaAmanda.saldo -= saque;
        }
            print("Saldo da ${contaDaAmanda.titular}: ${contaDaAmanda.saldo}");
        }

        class ContaCorrente {
            String titular;
            int agencia;
            int conta;
            double saldo = 20.0;
    }

----

Podemos levar a lógica do saque para dentro de nossa classe, para não precisarmos fazer repetição de código cada vez que uma nova pessoa for fazer um saque. Sem isso, caso tivéssemos uma pessoa além de amanda sacando dinheiro, precisaríamos fazer assim, muita repetição de código
    void main() {
        ContaCorrente contaDaAmanda = ContaCorrente();
        contaDaAmanda.titular = "Amanda";

        double saqueDaAmanda = 80.0;
        print("Saldo da ${contaDaAmanda.titular}: ${contaDaAmanda.saldo}");
        if (contaDaAmanda.saldo - saqueDaAmanda < -100) {
            print("Sem Saldo suficiente");
        } else {
            print("Sacando $saqueDaAmanda reais");
            contaDaAmanda.saldo -= saqueDaAmanda;
        }
            print("Saldo da ${contaDaAmanda.titular}: ${contaDaAmanda.saldo}");
        }

        ContaCorrente contaDoTiago = ContaCorrente();
        contaDoTiago.titular = "Tiago";

        double saqueDoTiago = 20.0;
        print("Saldo da ${contaDoTiago.titular}: ${contaDoTiago.saldo}");
        if (contaDoTiago.saldo - saqueDoTiago < -100) {
            print("Sem Saldo suficiente");
        } else {
            print("Sacando $saqueDoTiago reais");
            contaDoTiago.saldo -= saqueDoTiago;
        }
            print("Saldo da ${contaDoTiago.titular}: ${contaDoTiago.saldo}");
        }

        class ContaCorrente {
            String titular;
            int agencia;
            int conta;
            double saldo = 20.0;
    }

> • • •

Para fazer isso, levar a lógica, as funcionalidades, para dentro da classe, utilizamos de *Métodos*
- Primeiro, devemos declarar o *tipo* da operação que iremos fazer. No momento utilizaremos o tipo *void*, que não tem retorno
    void saque
- Colocar dentro dos parênteses os atributos que preciso para essa operação
    void saque(double valorDoSaque)
- Colocar abre e fecha chaves, pois dentro iremos trazer o if onde verificávamos o saque anteriormente  
    void saque(double valorDoSaque) {  }
- Porém, ao fazermos isso veremos que o código vai alegar erro, falando que os atributos não existem, não foram definidos dentro da classe
    void saque(double valorDoSaque) {
        print("Saldo da ${contaDaAmanda.titular}: ${contaDaAmanda.saldo}");
        if (contaDaAmanda.saldo - saqueDaAmanda < -100) {
        print("Sem Saldo suficiente");
        } else {
        print("Sacando $saqueDaAmanda reais");
        contaDaAmanda.saldo -= saqueDaAmanda;
        }
        print("Saldo da ${contaDaAmanda.titular}: ${contaDaAmanda.saldo}\n");
    }
- Dentro da minha classe eu quero que a classe em si seja referenciada por ela mesma. Não estaremos mais nos referindo à _contaDaAmanda_ ou ao _saqueDaAmanda
    void saque(double valorDoSaque) {
    print("Saldo da ${conta.titular}: ${conta.saldo}");
    if (conta.saldo - saque < -100) {
      print("Sem Saldo suficiente");
    } else {
      print("Sacando $saque reais");
      conta.saldo -= saque;
    }
    print("Saldo da ${conta.titular}: ${conta.saldo}\n");
  }
- Para, da classe ter ela mesma como referência, ainda faremos outra mudança, vamos usar a palavra reservada *this* em lugar do conta
    void saque(double valorDoSaque) {
        print("Saldo da ${this.titular}: ${this.saldo}");
        if (this.saldo - saque < -100) {
        print("Sem Saldo suficiente");
        } else {
        print("Sacando $saque reais");
        this.saldo -= saque;
        }
        print("Saldo da ${this.titular}: ${this.saldo}\n");
    }
- Como estamos verificando o quanto está sendo sacado para sabermos se podemos ou não sacar, onde passávamos o *saque* precisamos alterar para o que passamos como atributo, o *valorDoSaque
    void saque(double valorDoSaque) {
        print("Saldo da ${this.titular}: ${this.saldo}");
        if (this.saldo - valorDoSaque < -100) {
        print("Sem Saldo suficiente");
        } else {
        print("Sacando $valorDoSaque reais");
        this.saldo -= valorDoSaque;
        }
        print("Saldo da ${this.titular}: ${this.saldo}\n");
    }
- Agora podemos remover a linha onde inicializamos a variavel com o valor do saque
    double saqueDaAmanda = 80.0;

- Pois agora, para sacar, precisamos chamar o método, vamos utilizar valores direto
    contaDaAmanda.saque(20.0);
    print("Saldo da ${contaDaAmanda.titular}: ${contaDaAmanda.saldo}");

----

##### Métodos com Retorno
Adicionaremos dinheiro à conta, criando função de depósito
    void deposito(double ValorDoDeposito) { }

- Dentro da função colocaremos *this*, que vai referenciar a própria função        void deposito(double ValorDoDeposito) {
    this.saldo += ValorDoDeposito;
  }

##### Realizando depósito
    contaDaAmanda.deposito(130.0);

##### Realizando depósito
Para isso vamos alterar a função do depósito para que ela retorne algo, atribuindo a ela um tipo diferente de função, que não seja um void
    void deposito(double ValorDoDeposito) { }
    
    double deposito(double ValorDoDeposito) { }

- Essa função, que não é void, necessita de um retorno 
    double deposito(double ValorDoDeposito) {
        this.saldo += ValorDoDeposito;
        return this.saldo;
    }

----    

##### Realizando transferência bancária utilizando métodos
Para isso precisamos informar o valor que será transferido e a conta

----

##### AULA 04 - Destrinchando classes

Vejamos como estava antes nosso diagrama de Classes:

> Diagrama de classes antes:

| ContaCorrente |
| ------------- |
| `titular`   *String* |
| `agencia`   *int* |
| `conta`   *int* |
| `saldo`   *double* |
| `chequeEspecial`   *double* |

| Cliente |
| ------------- |
| `nome`   *String* |
| `cpf`   *String* |
| `profissao`   *String* |

Ocorre que pode haver mais de um cliente com o mesmo nome
- Precisamos destrinchar essa classe em outra classe, que se chamará Cliente, e nela usar o identificador único para cada cliente, que será seu CPF
- Na classe contaCorrente o tipo do titular não será mais uma String, será o tipo Cliente

> Diagrama de classes agora:

| ContaCorrente |
| ------------- |
| `titular`   *Cliente* |
| `agencia`   *int* |
| `conta`   *int* |
| `saldo`   *double* |
| `chequeEspecial`   *double* |

| Cliente |
| ------------- |
| `nome`   *String* |
| `cpf`   *String* |
| `profissao`   *String* |

> • • •

- Entre a main() e a contaCorrente criaremos uma nova classe clamada Cliente

    void main() {
        • • •
    }

    class Cliente {
    }

    class ContaCorrente {
        String titular;
        int agencia;
        int conta;
        double saldo = 20.0;
        double chequeEspecial = -100.0;

        • • •
    }

> • • •

Definimos o os atributos da classe Cliente
    class Cliente {
        String nome;
        String cpf;
        String profissao;
    }

> • • •

Alteramos o tipo do atributo nome da classe contaCorrente. Ele não será mais uma String, será agora um tipo Cliente
    void main() {
        • • •
    }

    class Cliente {
        String nome;
        String cpf;
        String profissao;
    }

    class ContaCorrente {
        Cliente titular;
        int agencia;
        int conta;
        double saldo = 20.0;
        double chequeEspecial = -100.0;

        • • •
    }

> • • •

O programa apresentará erro informando que uma variável do tipo String não pode ser atribuído a variável do tipo Cliente

    void main() {
        ContaCorrente contaDaAmanda = ContaCorrente();
        ContaCorrente contaDoTiago = ContaCorrente();
        contaDaAmanda.titular = "Amanda";
    }

> • • •

Para corrigir, devemos instanciar o objeto Cliente, assim poderemos acessar todos os seus atributos, inclusive o nome, conforme desejamos, e popularmos com suas respectivas informações

    Cliente amanda = Cliente();
    amanda.nome = "Amanda";
    amanda.cpf = "123.456.789-00";
    amanda.profissao = "Programadora Dart";

> • • •

Como colocamos essas informações dentro da contaCorrente ? Desta forma:
- Diremos que o atributo titular da classe contaCorrente é igual à amanda
- amanda é a variável do tipo Cliente que está armazenando todas as informações

    contaDaAmanda.titular = amanda;

> • • •

Como exibimos as informações agora?
Se imprimirmos como antes, nos retornará erro falando que titular é uma instância do tipo Cliente, em lugar de imprimir o nome do titular:
    print("Titular: ${contaDaAmanda.titular}");

Porém, podemos colocar mais um ponto para termos acesso aos campos do Cliente
    print("Titular: ${contaDaAmanda.titular.nome}");

----    

##### Organizar o código com a pasta Lib
Podemos ter arquivos que irão organizar as nossas classes 
- Crie um novo arquivo (new file). Geralmente, para ficar mais fácil de identificar, colocamos o nome da classe como o nome do arquivo: cliente.dart
- Cole o conteúdo da classe Cliente dentro do arquivo anteriormente criado: 
    class Cliente {
    String nome;
    String cpf;
    String profissao;
    }

- Crie um novo arquivo (new file) chamado contaCorrente.dart
- Cole o conteúdo da classe Cliente dentro do arquivo anteriormente criado: 
    class contaCorrente {
        Cliente titular;
        int agencia;
        int conta;
        double saldo = 20.0;
        double chequeEspecial = -100.0;

        • • •
    }

> • • •

A mudança fará com que apareçam erros, como ao passar o cursor sobre Cliente titular, dentro da classe contaCorrente, aparecerá "Classe Cliente indefinida". Isso significa que o Dart não conseguiu encontrar a classe Cliente dentro desse arquivo, pois movemos o arquivo para outro lugar
Para que o Dart volte a reconhecer, precisamos importar a classe presente em outro arquivos, usando o import, dentro da contacorrente.dart, e importando o arquivos do cliente
    import 'cliente.dart';
    class ContaCorrente {
        • • •
    }

> • • •

Precisamos importar para resolver os erros na Main() também. Ocorre que não conseguiremos fazer como antes, importando diretamente a contaCorrente, pois a main está dentro da pasta *bin* e a contaCorrente dentro da pasta *lib*, não estão dentro da mesma estrutura de pastas
    import '../lib/contacorrente.dart';
    import '../lib/cliente.dart';
    void main() {
        • • •
    }

> • • •

Agora, em cada arquivo escreveremos apenas código pertinente à essa classe.

----    

##### Acessando atributos em Cascata
Não precisamos tornar a repetir o nome da propriedade, como fizemos com a contaDaAmanda:
    Cliente amanda = Cliente();
    amanda.nome = "Amanda";
    amanda.cpf = "123.456.789-00";
    amanda.profissao = "Programadora Dart";
    contaDaAmanda.titular = amanda;
    print("Titular: ${contaDaAmanda.titular.nome}");

Podemos, em lugar disso
- Inicializar a classe cujo nome é tiago
- Acessar as propriedades da classe usando ..
- Só passar ponto e vírgula no final    

    ```
    Cliente tiago = Cliente()
        ..nome = "Tiago"
        ..cpf = "336.685.056-00"
        ..profissao = "Programador Dart";
        contaDoTiago.titular = tiago;        
        print("Titular: ${contaDoTiago.titular.nome}");
        ```

----    

##### Getters e Setter - Não altera código de saldo de fora da classe da Conta Corrente
Dentro da main() conseguimos alterar tudo livremente, se quisermos falar que o saldo da Amanda agora será de R$ -101, podemos, pois a main permite que alteremosa isto diretamente mesmo que já tenhamos definido que o limite do cheque especial é 100, então Amanda poderia ficar com um saldo negativo de até -100, nunca de -101
    ```
    import '../lib/contacorrente.dart';
    import '../lib/cliente.dart';
    void main() {
        ContaCorrente contaDaAmanda = ContaCorrente();
        contaDaAmanda.saldo = -101;
        print(contaDaAmanda.saldo);
    }
    ```

Para parar que isso aconteça vamos usar as propriedades: propriedade pública, privada, protegida
- Se antes do nome de meu atributo eu passo um underline, estou dizendo que aquela propriedade é privada, como podemos fazer isso com a propriedade saldo, dentro da classe ContaCorrente
    ```
    import 'cliente.dart';
    class ContaCorrente {
        Cliente titular;
        int agencia;
        int conta;
        double _saldo = 20.0;
        double chequeEspecial = -100.0;
    }
    ```

- Dessa forma, apenas dentro da conta corrente esse saldo poderá ser acessado
- Ocorre que, mesmo dentro do arquivo ContaCorrente, aparece onde utilizo o atributo saldo, que ele está inacessível, para isso, mesmo dentro do arquivo contacorrente.dart, devo passar o underline sempre que utilizo esse atributo:
    ```
    import 'cliente.dart';
    class ContaCorrente {
        Cliente titular;
        int agencia;
        int conta;
        double _saldo = 20.0;
        double chequeEspecial = -100.0;
        bool verificaSaldo(double valor) {
            if (this._saldo - valor < chequeEspecial) {
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
            this._saldo -= valorDeTransferencia;
            contaDestino.deposito(valorDeTransferencia);
            return true;
            }
        }
        
        bool saque(double valorDoSaque) {
            if (!verificaSaldo(valorDoSaque)) {
            return false;
            } else {
            this._saldo -= valorDoSaque;
            return true;
            }
        }

        double deposito(double ValorDoDeposito) {
            this._saldo += ValorDoDeposito;
            return this._saldo;
        }
        
    }
    ```

- Feito isto, agora que saldo é privado, não é mais possível acontecer esse tipo de erro
- Dentro da conta corrente até podemos mudar o valor de saldo, mas de fora dela, não adianta, o console irá retornar erro, dizendo que o saldo não foi definido:
    ```
    import '../lib/contacorrente.dart';
    import '../lib/cliente.dart';

    void main() {

    ContaCorrente contaDaAmanda = ContaCorrente();
    ContaCorrente contaDoTiago = ContaCorrente();

    contaDaAmanda._saldo = -101;
    print(contaDaAmanda._saldo);
    }
    ```    


> • • •

Para que possamos alterar o valor de saldo de dentro da main. Podemos criar métodos que vão fazer isso:
    ```
    import 'cliente.dart';

    class ContaCorrente {
        Cliente titular;
        int agencia;
        int conta;
        double _saldo = 20.0;
        double chequeEspecial = -100.0;

        void definirSaldo(double novoSaldo) {
            this._saldo = novoSaldo;      
        }

        • • •
    }
    ```

Esse método irá receber o novo saldo e adicionar o novo saldo dentro do campo saldo privado:
    ```
    import '../lib/contacorrente.dart';
    import '../lib/cliente.dart';

    void main() {

        ContaCorrente contaDaAmanda = ContaCorrente();
        ContaCorrente contaDoTiago = ContaCorrente();

        contaDaAmanda.definirSaldo(-101);

        print(contaDaAmanda._saldo);
    }
    ```

- Como acesso e imprimo esse valor, de saldo, que agora é privado? Em lugar de acessarmos diretamente o saldo na Main(), iremos criar outro método na classe de ContaCorrente
- O método obterSaldo não terá parâmetro nenhum, ele não precisa obter nada, precisa apenas alterar o valor de saldo
    ```
    double obterSaldo() {
        return this._saldo;
    }
    ```

- No método main() não mais tentaremos acessar diretamente o saldo, em lugar disso, iremos acessar o obterSaldo()
    ```
    import '../lib/contacorrente.dart';
    import '../lib/cliente.dart';

    void main() {
        ContaCorrente contaDaAmanda = ContaCorrente();
        ContaCorrente contaDoTiago = ContaCorrente();

        contaDaAmanda.definirSaldo(-101);

        print(contaDaAmanda.obterSaldo());
    }
    ```

> • • •

Porém, ao executarmos agora, o resultado será R$ -101, mas ainda não podemos deixar que o saldo seja menor que o cheque especial, que permite saldo negativo de até R$ -100
- Faremos uma verificação na função que é o nosso Getter, a definirSaldo()
    ```
    void definirSaldo(double novoSaldo) {
        if(novoSaldo <= chequeEspecial) {
            this._saldo = novoSaldo;      
        } else {
            print("Erro! Tente mudar o saldo para um valor menor que o cheque especial");
        }
    }
    ```

----    

##### Getters e Setter próprios do Dart
_ Apagaremos os métodos definirSaldo() e obterSaldo(), criados na classe ContaCorrente 
- na classe ContaCorrente utilizaremos a palavra reservada get, daremos um nome a ele e, dentro das chaves, solicitaremso que o Dart nos retorne a propriedade privada saldo 
    ```
    get saldo {
        return _saldo;
    }
    ```
- Na função main(), passaremos a conta da amanda _ponto_ o nome do nosso getter, que é _saldo_
    ```
    print(contaDaAmanda.saldo());
    ```

- Para implementar o setter, não preciso nem utilizar o this, ele já sabe que o contexto é a conta corrente. Basta fazer assim:
    ```
    set saldo(double novoSaldo) {
        _saldo = novoSaldo;
    }
    ```

- Dentro das funções, onde antes passávamos a propriedade privada _saldo, podemos acessar somente o saldo
    ```
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
    ```           

- Podemos no set fazer uma verificação semelhante ao que faríamos antes
    ```
    set saldo(double novoSaldo) {
		if (novoSaldo >= chequeEspecial) {
			_saldo = novoSaldo;
		} else {
			print("Erro! Tentei modificar o valor de saldo para um valor menor que o cheque especial");
		}
	}
    ```         

----    

##### Produtividade: Getters e Setter mais rápidos
- Para exemplificar, vamos definir a agência como um atributo privado, passando o underline na frente
    ```
    import 'cliente.dart';

    class ContaCorrente {
        Cliente titular;
        int _agencia;
        int conta;
        double _saldo = 20.0;
        double chequeEspecial = -100.0;
    ```

- Uma maneira mais rápida de fazer um getter, pois as vezes não necessariamente queremos fazer uma verificação, como quisemos fazer no setter do saldo
- Passaremos a palavra reservada get, definir um nome, que no caso chamaremos de agência, e, após o símbolo da setinha colocar o underline e o nome do atributo privado, ela irá substituir tanto a chave quanto o return e vai nos retorna tudo o que estiver à direita dela
    ```
    get agencia => _agencia;
    ```
- Para criar o set:
    ```
	set agencia(int novaAgencia) => { _agencia = novaAgencia };
    ```    
ou
    ```
    set agencia(int novaAgencia) { _agencia = novaAgencia; }
    ```

----    

##### Agência com números negativos ? Contrutores
Se atribuirmos um número negativo à agencia e executarmos, o programa executará normalmente. Porém, não existem agência cujo número seja negativo. Vamos alterar isso com o get
- Para isso, vamos manter o nosso get, que trás os dados do campo agência
    ```
    class ContaCorrente {
        Cliente titular;
        int _agencia = 145;

        get agencia => _agencia;
    }
    ```   

- E alterar o nosso set, inserindo uma verificação
    ```
    set agencia(int novaAgencia) { if(novaAgencia > 0) _agencia = novaAgencia; }
    ```
Ao fazer isso, caso se insira um número negativo no campo da agência, ele irá ignorar este número e definir a agência com o número padrão que foi definido para ela, na classe ContaCorrente
- Ao atribuirmos um valor de inicialização, estamos utilizando de um *Construtor*:
    ```
    class ContaCorrente {
		int _agencia = 145;
		• • •
	}
	```

- Ele constrói o objeto de acordo com os parâmetros que passamos para ele. Ele pode conter ou não parâmetros, mas é adequado utilizar
- Dentro da classe ContaCorrente, de preferência logo no início, passaremos os atributos que a partir de então serão obrigatórios que passemos. No nosso exemplo, passaremos a agência e a conta
	```
	class ContaCorrente {
		ContaCorrente(this._agencia,this.conta);
		• • •
	}
	```
- Como esses dois atributos agora são obrigatórios, note que haverão dois erros agora na main(). Se passarmos o cursor sobre esse código, ele nos dirá que precisamos informar dois argumentos:
	```
	void main() {
		ContaCorrente contaDaAmanda = ContaCorrente();
		ContaCorrente contaDoTiago = ContaCorrente();
		• • •
	}
	```

- Para que o programa execute, obrigatoriamente precisaremos enviar os dois parâmetros, conforme exemplo:
	```
	import '../lib/contacorrente.dart';
	import '../lib/cliente.dart';

	void main() {
		ContaCorrente contaDaAmanda = ContaCorrente(123, 169874);
		
		print(contaDaAmanda.conta);
		print(contaDaAmanda.agencia);
	}
	```

> • • •

Ocorre, porém, que como no construtor estamos incluindo direto os atributos privados, se tentarmos passar como parâmetro um número de agência que seja negativo, o sistema irá executar, o que não pode acontecer, não existem números de conta que sejam negativos

O construtor pode acessar valores que não sejam direto do campo, e podemos tratar dentro do construtor
	```
	class ContaCorrente {

	ContaCorrente(int novaAgencia,this.conta) {
		if(novaAgencia > 0) _agencia = novaAgencia; 
	}
	```