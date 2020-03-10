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
#### AULA 01 Primeiros passos com o Flutter
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
    
#### Esclarecimentos
+ MaterialApp é o ponto de partida do seu aplicativo, ele informa ao Flutter que você usará os componentes do Material e seguirá o design do material no seu aplicativo. Ele é um widget que apresenta vários widgets ( Navigator, Theme) necessários para criar um aplicativo de design de materiais.
+ Scaffoldé usada sob MaterialApp, dá-lhe muitas funcionalidades básicas, como AppBar, BottomNavigationBar, Drawer, FloatingActionButton, etc. O Scaffoldfoi projetado para ser o único contêiner de nível superior para um MaterialApp, embora não seja necessário aninhar um Scaffold.
Estrutura básica de aplicativo típico:
    ```
    void main()  => runApp(MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
        ),
    ));
    ```