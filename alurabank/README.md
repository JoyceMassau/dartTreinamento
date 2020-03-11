# alurabank

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


### Fundamentos de Flutter: Crie o seu primeiro App

### AULA 01 Primeiros passos com o Flutter

#### Criando projeto e executando projeto flutter
- Criar projeto, no terminal,  digite:
	```
	flutter	create nomeDoProjeto
	```

- Para rodar projeto criado, entre na pasta criou e execute
	```
	cd nomeDoProjeto
    flutter run
	```

- Para visualizar os dispositivos disponíveis, caso hajam
	```
    flutter devices
	```
- Para criar emulador no browser
    https://flutter.dev/docs/get-started/web    

- Para emular no browser, no terminal digite
    ```
    flutter run -d chrome
    ```

- Para tornar a executar no browser, digite
    ```
    r
    ```

----

#### Apresentando o resultado com o Flutter
- Para compreendermos como o flutter cria esse aplicativo de contador, exibido ao iniciá-lo, apague todo o código após a função main, dentro da pasta *lib* do projeto. O arquivo lib passará a conter apenas o código
    ```
    import 'package:flutter/material.dart';
    void main() => runApp(MyApp());
    ```

#### Tentando printar na tela
- Apagado o código anterior, tentemos usar o comando print para exibir uma mensagem. Ao dar *Ctrl+F5* para recarregar a página, verá que nada acontece no emulador; a mensagem só é exibida no terminal
    ```
    import 'package:flutter/material.dart';
    void main() => print('Bem vindo ao AluraBank');
    ```

#### Comportamento visual
- Para possibilitar que exibamos coisas em nosso aplicativo, precisamos seguir algumas regras. A começar, que o código só é renderizado no aplicativo se executado dentro do runApp
- Precisamos witgets prontos. Utilizaremos um widget de texto
- Para funcionar, precisamos passar ao menos dois argumentos, o texto que quer exibir e a direção dele
    ```
    import 'package:flutter/material.dart';
    void main() => runApp(Text("Bem vindo ao AluraBank", textDirection: TextDirection.ltr));
    ```

#### Widget de coluna
- Para vermos o resultado, na documentação, procuraremos um widget que gostaríamos de utilizar
    https://api.flutter.dev/flutter/widgets/Column-class.html

- Vamos colar ele dentro do RunApp e executar. Observe que alteramos o código da documentação, acrescentando a direção do texto, conforme vimos anteriormente
    ```
    import 'package:flutter/material.dart';

    void main() => runApp(Column(
    children: <Widget>[
        Text(
        'Deliver features faster', 
        textDirection: TextDirection.ltr
        ),
        Text(
        'Craft beautiful UIs', 
        textDirection: TextDirection.ltr
        ),
    ],
    ));
    ```

#### AluraBank: tela de transferências
- No catálogo de Widgets do flutter, vamos selecionar Material Components
- O MaterialApp vai envolver todos os outros componentes
- No main.dart, desntro da pasta lib, iremos alterar para utilizar o MaterialApp
    ```
    import 'package:flutter/material.dart';

    void main() => runApp(
        MaterialApp()
    );
    ```

- Devemos indicar a tela de início do aplicativo por meio do home
    ```import 'package:flutter/material.dart';

    void main() => runApp(
        MaterialApp(
            home:
        )
    );
    ```

- Podemos colocar inclusive um texto, que o MaterialApp irá reconhecer
    ```
    import 'package:flutter/material.dart';

    void main() => runApp(
        MaterialApp(
            home: Text("Teste"),
        )
    );
    ```

#### AppBar: Barra superior do app
- Utilizaremos o Scaffold do MaterialApp para envolver o conteúdo e, para criar a barra superior do aplicativo, a AppBar, basta chamar o Widget
    ```
    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
        ),
    ));
    ```

- Colocar o texto que é o título da página de Transferências. Há uma propriedadade de title. Como estamos usando o MaterialApp não precisamos indicar o posicionamento, como fazíamos anteriormente, com "textDirection: TextDirection.ltr"
    ```
    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Transferências')),
        ),
    ));
    ```

#### Float Action Button: um botão flutuante aguardando ação do usuário
- No projeto do AluraBank que pretendemos criar há um botão flutuante. Para implementa-lo, dentro da estrutura do Scaffold chamamos o Widget
    ```
    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Transferências')),
            floatingActionButton: FloatingActionButton(),
        ),
    ));
    ```

- O nosso botão espera um ícone de um sinal de *mais* para adicionarmos mais elementos. O nome desde ícone é *add*
    ```
    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Transferências')),
            floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
            ),
        ),
    ));
    ```

- Para maiores informações sobre ícones
    https://api.flutter.dev/flutter/material/Icons-class.html

#### Implementando componentes de itens de lista de transferências
- Para implementar este visual utilizaremos a documentaçaõ do MaterialApp
    https://flutter.dev/docs/development/ui/widgets/material

- Para utilizar um componente na parte ainda vazia do app, abaixo do AppBar, utilizaremos o *Body* dentro da estrutura do *Home* de nosso aplicativo. Utilizaremos o componente de texto para testarmos
    ```
    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(
        home: Scaffold(
            body: Text('Teste'),
            appBar: AppBar(title: Text('Transferências')),
            floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
            ),
        ),
    ));
    ```

- A documentação do MaterialApp nos informa que o componente que devemos utilizar para compor a estrutura de nossa lista é o Card. Poderemos substituir o widget de texto por este. Ocorre, porém, que visualmente o código abaixo não irá renderizar nada no body do aplicativo. Isso acontece, pois o card só funciona como um container para armazenar outras estruturas
    ```
    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(
        home: Scaffold(
            body: Card(),
            appBar: AppBar(title: Text('Transferências')),
            floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
            ),
        ),
    ));
    ```

- Vamos colocar um conteúdo dentro de um outro Widget, para isso utilizaremos também o *Child*
    ```
    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(
        home: Scaffold(
            body: Card(
                child: Text('Teste'),
            ),
            appBar: AppBar(title: Text('Transferências')),
            floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
            ),
        ),
    ));
    ```
- Para que coloquemos a estrutura em um nível acima, primeiro vamos baixar a extensão que trás par ao VS Code os atalhos de teclado do IntelliJ
    + No VS Code, em entensões, pesquise e instale a extensão *IntelliJ IDEA Keybindings*
    + Com a extensão instalada e o cursor sobre o widget de Texto, selecione a opção *Wrap With Column*: child: *Text*('Teste') para envolver os filhos dessa coluna dentro do widget
- O código ficará da seguinte forma
    ```
    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(
        home: Scaffold(
            body: Card(
                child: Column(
                    children: <Widget>[
                    Text('Teste'),
                    ],
                ),
            ),
            appBar: AppBar(title: Text('Transferências')),
            floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
            ),
        ),
    ));
    ```   
- Podemos adicionar mais texto dentro do container criado para testar seu comportamento
    ```
    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(
        home: Scaffold(
            body: Card(
                child: Column(
                    children: <Widget>[
                    Text('Teste'),
                    Text('Teste'),
                    Text('Teste'),
                    Text('Teste'),
                    ],
                ),
            ),
            appBar: AppBar(title: Text('Transferências')),
            floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
            ),
        ),
    ));
    ```

#### ListTile: Estrutura de listas do Flutter
- Utilizaremos da documentação deste Widget
    https://api.flutter.dev/flutter/material/ListTile-class.html
- Iremos apagar o trecho de código onde criamos a coluna, ele foi criado apenas com intuito de demonstração e teste, ficando o código conforme abaixo
    ```
    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(
        home: Scaffold(
            body: Card(
                child: 
            ),
            appBar: AppBar(title: Text('Transferências')),
            floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
            ),
        ),
    ));
    ```
- Para incluirmos um ícone conforme o projeto do AluraBank, usaremos um [leading](https://api.flutter.dev/flutter/material/ListTile/leading.html "leading"), um ícone a ser exibido antes do título, com um [ícone de um cifrao](https://api.flutter.dev/flutter/material/Icons/monetization_on-constant.html "ícone de um cifrao")
    ```
    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(
        home: Scaffold(
            body: Card(
                child: ListTile(
                    leading: Icon(Icons.monetization_on),
                )
            ),
            appBar: AppBar(title: Text('Transferências')),
            floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
            ),
        ),
    ));
    ```
- Dentro do ListTile passaremos também um título e um subtítulo para compor o card
    ```
    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(
        home: Scaffold(
            body: Card(
                child: ListTile(
                    leading: Icon(Icons.monetization_on),
                    title: Text('100.0'),
                    subtitle: Text('10000'),
                )
            ),
            appBar: AppBar(title: Text('Transferências')),
            floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
            ),
        ),
    ));
    ```
#### Lista de Cards
- Vimos como implementar o ListTile para exibir um card, ocorre que é necessário que exibamos uma lista de cards e não um avulso. Para tanto, podemos indicar que o card estará dentro de uma coluna
    + Posicione o cursor sobre body: *Card*(
        + Com a extensão para VS Code "IntelliJ IDEA KeyBindings" instalada, pressione o atalho do teclado _Alt + Enter_
        + Selecione _"Wrap With Column"_
- O código ficará da seguinte forma, tendo ainda apenas um item de lista
    ```
    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(
        home: Scaffold(
            body: Column(
            children: <Widget>[
                Card(
                    child: ListTile(
                        leading: Icon(Icons.monetization_on),
                        title: Text('100.0'),
                        subtitle: Text('10000'),
                    )
                ),
            ],
            ),
            appBar: AppBar(title: Text('Transferências')),
            floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
            ),
        ),
    ));
    ```        
- Porém, podemos replicar o trecho do sódigo do card, que representa um item da lista
    ```
    Card(
        child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text('100.0'),
        subtitle: Text('10000'),
        )
    ),
    ```    
- Ficando da seguinte forma
    ```
    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(
        home: Scaffold(
            body: Column(
            children: <Widget>[
                Card(
                    child: ListTile(
                        leading: Icon(Icons.monetization_on),
                        title: Text('100.0'),
                        subtitle: Text('10000'),
                    )
                ),
                Card(
                    child: ListTile(
                        leading: Icon(Icons.monetization_on),
                        title: Text('100.0'),
                        subtitle: Text('10000'),
                    )
                ),
                Card(
                    child: ListTile(
                        leading: Icon(Icons.monetization_on),
                        title: Text('100.0'),
                        subtitle: Text('10000'),
                    )
                ),
            ],
            ),
            appBar: AppBar(title: Text('Transferências')),
            floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
            ),
        ),
    ));
    ```

#### Extração de código para facilitar leitura
Já temos bastante código, mas não é intuitivo entender que a _Column_ representa uma lista de transferências ou que o Card representa um item da lista. Criaremos uma classe para tornar isso mais intuitivo
- Criaremos uma classe ao final do _arquivo main.dart_, da pasta _bin_ chamada ListaTransferencias
    ```
    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(
        home: Scaffold(
            
        ),
    ));

    class ListaTransferencias {
    
    }
    ```
- Com a classe criada, podemos utilizá-la no _body_ do aplicativo. Como o body espera um Widget, precisamos transformar a classe em um, fazendo uma herança
    ```
    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(
        home: Scaffold(
            
        ),
    ));

    class ListaTransferencias extends Widget {
    
    }
    ```
- Quando fazemos uma herança é necessário fazer um _override_, uma sobrescrita de um método obrigatório    
    + Posicionar o cursor sobre a classe criada anteriormente class ListaTransferencias extends *Widget* { }
        + Alt + Enter
        + _"Create 1 missing override"_
- Ficando o código da seguinte forma
    ```
    class ListaTransferencias extends Widget {
    @override
    Element createElement() {
        // TODO: implement createElement
        throw UnimplementedError();
    }
    ```      

#### StateLess e StateFul: Referência a Widget de alto nível
- Não iremos desenhar desde o zero um widget, queremos apenas utilizar essa estrutura já pronta. Para widgets de alto nível, como desejamos implementar, temos duas referências que podemos estar utilizando, que irão encapsular elementos do código que já temos de widgets prontos
    + [class ListaTransferencias extends StatefulWidget { }](https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html "class ListaTransferencias extends StatefulWidget { }") - Dinâmico
   
    + [class ListaTransferencias extends StatelessWidget { }](https://api.flutter.dev/flutter/widgets/StatelessWidget-class.html "class class ListaTransferencias extends StatelessWidget { }") - Fixo
- [Para saber mais sobre estado de widgets](https://flutter.dev/docs/development/ui/interactive#stateful-and-stateless-widgets "Para saber mais sobre estado de widgets")
- Utilizaremos à princípio o StateLess, que é fixo, não muda, evitando o risco de entragar algo que não esperamos
    ```
    class ListaTransferencias extends StatelessWidget { }
    ```

- Não temos o método override de referência genérica,que cria um elemento desde o zero. Para um elemento de alto nível isto não é obrigátório. Para isso usamos a _build_
    ```
    class ListaTransferencias extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            //TODO: implement build
            return null;
        }
    }
    ```

- Recortaremos todo o código que passamos no _body_ do aplicativo para compor as colunas, e colaremos no retorno da função
    ```
    class ListaTransferencias extends StatelessWidget {
    @override
        Widget build(BuildContext context) {
            return Column(
            children: <Widget>[
                Card(
                    child: ListTile(
                        leading: Icon(Icons.monetization_on),
                        title: Text('100.0'),
                        subtitle: Text('10000'),
                    )
                ),
                Card(
                    child: ListTile(
                        leading: Icon(Icons.monetization_on),
                        title: Text('100.0'),
                        subtitle: Text('10000'),
                    )
                ),
                Card(
                    child: ListTile(
                        leading: Icon(Icons.monetization_on),
                        title: Text('100.0'),
                        subtitle: Text('10000'),
                    )
                ),
            ],
            );
        }
    }
    ```

- Para utilizar a ListaTransferências no _body_ do aplicativo basta chamá-la, como faríamos com um widget    
    ```
    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(
        home: Scaffold(
            body: ListaTransferencias(),
            appBar: AppBar(title: Text('Transferências')),
            floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
            ),
        ),
    ));

    class ListaTransferencias extends StatelessWidget {
        • • •
    }        
    ```

#### Refatorando mais: Referência ao card
- Para tornar mais intuitivo podemos refatorar o item que compõe a transferência, o Card. Para isso, conforme fizemos antes, criaremos uma classe para esse item.
    + Conforme antes, informaremos _extends StatelessWidget_ para informar que *não* modificaremos o conteúdo diretamente
    + Posicionando o cursor sobre o nome da nova classe e clicando sobre _Alt+Enter_ clicaremos sobre _Create 1 missing override_ para que ele crie o método obrigatório de _build_
    ```
    class ItemTransferencia extends StatelessWidget {
    @override
        Widget build(BuildContext context) {
            // TODO: implement build
            throw UnimplementedError();
        }   
    }
    ```

- Copie da classe de _ListaTransferencias_ o trecho de código em que é criado o Card, e cole na classe ItemTransferencia
```
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    body: ListaTransferencias(),
    • • •
  ),
));

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          • • •
        ),
        Card(
          • • •
        ),
        Card(
          • • •
        ),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text('100.0'),
        subtitle: Text('10000'),
      )
    );
  }
}
```

#### Valores dinâmicos para itens da lista
- Pode ser que o título e subtítulo de cada Card, cada item da lista, seja diferente do outro, por isso não basta apagar todo trecho de código a respeito de _Card_ na classe ListaTransferencias, pois fazer isso assumiria um valor fixo sempre. No exemplo abaixo, inevitávelmente cada item de lista teria como título "100.0" e como subtítulo "10000"
    ```
    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(
        home: Scaffold(
            body: ListaTransferencias(),
            • • •
        ),
    ));

    class ListaTransferencias extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return Column(
                children: <Widget>[
                    ItemTransferencia(),        
                    ItemTransferencia(),        
                    ItemTransferencia(),        
                ],
            );
        }
    }

    class ItemTransferencia extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return Card(
                child: ListTile(
                    leading: Icon(Icons.monetization_on),
                    title: Text('100.0'),
                    subtitle: Text('10000'),
                )
            );
        }
    }
    ```

- Podemos extrair o valor do métodos construtor da classe, e utilizá-lo no título e subtítulo
    + Alteramos o texto fixo de dentro do _title: Text('100.0')_ e _subtitle: Text('10000')_ para o nome das variáveis que iremos criar
    + As criamos como _Final_ para indicar que é uma *constante*
    + Criamos um método construtor utilizando as duas variáveis como parâmetro
```
class ItemTransferencia extends StatelessWidget {
  final String valor;
  final String numeroConta;

  ItemTransferencia(this.valor, this.numeroConta);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(valor),
        subtitle: Text(numeroConta),
      )
    );
  }
}
```

- Agora, onde chamamos o método *ItemTransferencia()* poderemos alterar os valores, atribuindo um valor diferente a cada card. Para isso passaremos os dois atributos que agora ele está esperando, através do construtos, o _valor_ e a _conta_
```
lass ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
      children: <Widget>[
        ItemTransferencia('1000.0', '6020'),        
        ItemTransferencia('6200.0', '6030'),        
        ItemTransferencia('130.0', '9820'),        
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final String valor;
  final String numeroConta;

  ItemTransferencia(this.valor, this.numeroConta);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(valor),
        subtitle: Text(numeroConta),
      )
    );
  }
}
```

#### Cria classe transferência
- Estávamos usando valores primitivos para utilizar nossas variáveis. Façamos diferente para representar a Transferência
    + Devemos criar uma classe Transferência e criar os atributos da mesma
    ```
    class Transferencia extends StatelessWidget {
        final double valor;
        final int numeroConta;
    }
    ```

- Crie método obrigatório / _override_, usando o comando Alt+Enter sobre o nome da classe
    ```
    class Transferencia extends StatelessWidget {
        final double valor;
        final int numeroConta;

        @override
        Widget build(BuildContext context) {
            // TODO: implement build
            throw UnimplementedError();
        }
    }
    ```

- Crie método construtor
    ```
    class Transferencia extends StatelessWidget {
        final double valor;
        final int numeroConta;

    Transferencia(this.valor, this.numeroConta);

        @override
        Widget build(BuildContext context) {
            // TODO: implement build
            throw UnimplementedError();
        }
    }
    ```

- Vamos utilizar a classe _Transferencia_ na classe _ItemTransferencia_ e mencionar que estamos usando um atributo privado
    ```
    class ItemTransferencia extends StatelessWidget {

        final Transferencia _transferencia;

        ItemTransferencia(this.valor, this.numeroConta);
        
        @override
        Widget build(BuildContext context) {
            return Card(
            child: ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text(valor),
                subtitle: Text(numeroConta),
            )
            );
        }
    }
    ```

- Passamos para o construtor o atributo vindo de Transferencia 
    ```
    class ItemTransferencia extends StatelessWidget {

        final Transferencia _transferencia;

        ItemTransferencia(this._transferencia);
        
        @override
        Widget build(BuildContext context) {
            return Card(
            child: ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text(valor),
                subtitle: Text(numeroConta),
            )
            );
        }
    }
    ```

- Na classe ItemTransferencia, onde utilizamos as variáveis, dizemos que elas vem da referência privada _transferencia    
    ```
    class ItemTransferencia extends StatelessWidget {

        final Transferencia _transferencia;

        ItemTransferencia(this._transferencia);
        
        @override
        Widget build(BuildContext context) {
            return Card(
                child: ListTile(
                    leading: Icon(Icons.monetization_on),
                    title: Text(_transferencia.valor),
                    subtitle: Text(_transferencia.numeroConta),
                )
            );
        }
    }
    ```

- Para trazer o resultado em formato de string, como estávamos fazendo anteriormente com a variável em formato de string, passamos o ToString
    ```
    class ItemTransferencia extends StatelessWidget {

        final Transferencia _transferencia;

        ItemTransferencia(this._transferencia);
        
        @override
        Widget build(BuildContext context) {
            return Card(
                child: ListTile(
                    leading: Icon(Icons.monetization_on),
                    title: Text(_transferencia.valor.toString()),
                    subtitle: Text(_transferencia.numeroConta.toString()),
                )
            );
        }
    }
    ```

- Na classe ListaTransferencias chamamos a classe de Transferencia para passarmos os valores dos atributos
    ```
    class ListaTransferencias extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return Column(
            children: <Widget>[
                ItemTransferencia(Transferencia(100.0, 12354)),
                ItemTransferencia(Transferencia(650.0, 58891)),
                ItemTransferencia(Transferencia(130.0, 60154)),
            ],
            );
        }
    }
    ```

### AULA 03 Criando formulário e refatorando o código

#### Nova tela de Criando Transferência
- Não precisamos manter dentro do body a ListaTransferencias no momento em que estamos criando uma nos tela. Tiramos essa referência de widget, criando um novo widget e passando parênteses indicando que se trata da instância de uma classe, embora essa classe não exista ainda
    ```
    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(
        home: Scaffold(
            body: FormularioTransferencias(),
            appBar: AppBar(title: Text('Transferências')),
            floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
            ),
        ),
    ));
    ```

- Com a extensão _"IntelliJ IDEA Keybindings"_ instalada crie uma classe, pressionando _Alt+Enter_ sobre a referência _FormularioTransferencias()_ dentro do body e selecione a opção *Create class FormularioTransferencias()*
    ```
    class FormularioTransferencias {
       
    }
    ```

- Edita classe para extender de widget fixo
    ```
    class FormularioTransferencias extends StatelessWidget {
        
    }
    ```
- Atalho de teclado Alt+Enter para criar método obrigatório    
 ```
    class FormularioTransferencias extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            // TODO: implement build
        }
    }
    ```

- Para testarmos, vamos retornar um widget genérico, o Container
 ```
    class FormularioTransferencias extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return Container();
        }
    }
    ```

- Se executarmos o programa, será renderizada uma tela sem os cards, porém com o mesmo título que utilizávamos anteriormente
![](https://github.com/JoyceMassau/dartTreinamento/tree/master/img/NovateladeCriandoTransferencia.jpg)

#### Esclarecimentos
+ MaterialApp é o ponto de partida do seu aplicativo, ele informa ao Flutter que você usará os componentes do Material e seguirá o design do material no seu aplicativo. Ele é um widget que apresenta vários widgets (Navigator, Theme) necessários para criar um aplicativo de design de materiais.
+ Scaffold é usada sob MaterialApp, dá-lhe muitas funcionalidades básicas, como AppBar, BottomNavigationBar, Drawer, FloatingActionButton, etc. O Scaffoldfoi projetado para ser o único contêiner de nível superior para um MaterialApp, embora não seja necessário aninhar um Scaffold.
Estrutura básica de aplicativo típico:
    ```
    void main() => runApp(MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
        ),
    ));
    ```    

#### Shortcodes: Atalhos de teclado para agilizar a escrita de código 
Com a extensão _IntelliJ IDEA Key Bindings for Visual Studio Code_ instalada
+ stless + Tab
    + Cria estrutura de classe StatelessWidget, aguardando o usuário preencher apenas o nome da classe
+ stful + Tab
    + Cria estrutura de classe StatelessWidget, aguardando o usuário preencher apenas o nome da classe