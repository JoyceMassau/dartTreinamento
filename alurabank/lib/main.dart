import 'package:flutter/material.dart';

void main() => runApp(AlurabankApp());

class AlurabankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListaTransferencias(),       
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
          Editor(
            controlador: _controladorCampoNumeroConta, 
            rotulo: 'Número da Conta', 
            dica: '000',
          ),
          Editor(
            controlador: _controladorCampoValor, 
            rotulo: 'Valor', 
            dica: '0.00', 
            icone: Icons.monetization_on
          ),        
          RaisedButton(
            child: Text('Confirmar'),
            onPressed: () => _criaTransferencia(context),
          ),
        ],
      )
    );
  }
}

void _criaTransferencia(BuildContext context) {
  final int numeroConta = int.tryParse(_controladorCampoValor.text);
  final double valor = double.tryParse(_controladorCampoNumeroConta.text);
  if(numeroConta != null && valor != null) {
    final transferenciaCriada = Transferencia(valor, numeroConta);  
    debugPrint('Criando Transferência');
    debugPrint('$transferenciaCriada');
    Navigator.pop(context, transferenciaCriada);
  }
}

class Editor extends StatelessWidget {

  final TextEditingController controlador;
  final String rotulo;
  final String dica;
  final IconData icone;

  Editor({this.controlador, this.rotulo, this.dica, this.icone});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
      controller: controlador,
        style: TextStyle(
          fontSize: 24.0,
        ),
        decoration: InputDecoration(
          labelText: rotulo,
          hintText: dica,
          icon: Icon(icone),
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}

class ListaTransferencias extends StatefulWidget {
  @override
  _ListaTransferenciasState createState() => _ListaTransferenciasState();
}

class _ListaTransferenciasState extends State<ListaTransferencias> {
  final List<Transferencia> _transferencias = List();

  @override
  Widget build(BuildContext context) {
    _transferencias.add(Transferencia(100.0, 12365));
    
    return Scaffold(      
      appBar: AppBar(title: Text('Transferências')), 
      body: ListView.builder(
        itemCount: _transferencias.length,
        itemBuilder: (context, indice) {
          final transferencia = _transferencias[indice];
          return ItemTransferencia(transferencia);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add), onPressed: () {
          final Future <Transferencia> future = Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioTransferencias();
          }));
          future.then((transferenciaRecebida){
            debugPrint('chegou no then do future');
            debugPrint('$transferenciaRecebida');
            _transferencia.add(transferenciaRecebida);
          });
        },
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