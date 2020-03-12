import 'package:flutter/material.dart';

void main() => runApp(AlurabankApp());

class AlurabankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormularioTransferencias(),       
      ),
    );
  }
}

class FormularioTransferencias extends StatelessWidget {

  final TextEditingController _controladorCampoNumeroConta = TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(title: Text('Criando Transferências')), 
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
            controller: _controladorCampoNumeroConta,
              style: TextStyle(
                fontSize: 24.0,
              ),
              decoration: InputDecoration(
                labelText: 'Número da Conta',
                hintText: '0000',
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
            controller: _controladorCampoValor,
              style: TextStyle(
                fontSize: 24.0,
              ),
              decoration: InputDecoration(
                icon: Icon(Icons.monetization_on),
                labelText: 'Valor',
                hintText: '0.00',
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          RaisedButton(
            child: Text('Confirmar'),
            onPressed: () {
              debugPrint("Clicou sobre o botão");
              final int numeroConta = int.tryParse(_controladorCampoValor.text);
              final double valor = double.tryParse(_controladorCampoNumeroConta.text);
              if(numeroConta != null && valor != null) {
                final transferenciaCriada = Transferencia(valor, numeroConta);
                debugPrint('$transferenciaCriada');
              }
            },
          ),
        ],
      )
    );
  }
}

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      appBar: AppBar(title: Text('Transferências')), 
      body: Column(
        children: <Widget>[
          ItemTransferencia(Transferencia(100.0, 12354)),
          ItemTransferencia(Transferencia(650.0, 58891)),
          ItemTransferencia(Transferencia(130.0, 60154)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}

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

class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);

  @override
  String toString() {
    return 'Transferencia{valor: $valor, numeroConta: $numeroConta}';
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}