import 'package:flutter/material.dart';

class Multiplicar extends StatefulWidget {
  const Multiplicar({Key? key}) : super(key: key);

  @override
  _MultiplicarState createState() => _MultiplicarState();
}

String valor = "";

class _MultiplicarState extends State<Multiplicar> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();

  void multiplica() {
    setState(() {
      double n1 = double.parse(num1.text);
      double n2 = double.parse(num2.text);

      double resultado = n1 * n2;

      valor = 'Resultado: $resultado';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Colors.white,
      body: _corpo(),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Multiplicador de Números"),
      centerTitle: true,
      backgroundColor: Colors.deepPurple,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _campo("Digite o primeiro número", num1),
          _campo("Digite o segundo número", num2),
          _botao(),
          _texto(valor),
        ],
      ),
    );
  }

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitulo, labelStyle: TextStyle(color: Colors.grey)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black, fontSize: 25.0),
      controller: objController,
    );
  }

  _botao() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: multiplica,
          child: Text("Calcular",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Colors.blueGrey,
        ),
      ),
    );
  }

  _texto(text) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: text != valor ? Colors.green : Colors.red, fontSize: 25.0),
    );
  }
}
