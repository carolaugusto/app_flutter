import 'package:flutter/material.dart';

class Moeda extends StatefulWidget {
  const Moeda({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Moeda> {
  TextEditingController inputValor = TextEditingController();
  String dropdownDe = '';
  String dropdownPara = '';
  String resultado = '';

  converter() {
    double euro = 5.24;
    double dolar = 4.97;
    double euroDolar = 1.05;

    double valor = double.parse(inputValor.text);
    double conversao = 0;

    if (dropdownDe == 'real' && dropdownPara == 'real') {
      conversao = valor;
    } else if (dropdownDe == 'euro' && dropdownPara == 'euro') {
      conversao = valor;
    } else if (dropdownDe == 'dolar' && dropdownPara == 'dolar') {
      conversao = valor;
    } else if (dropdownDe == 'dolar' && dropdownPara == 'real') {
      conversao = valor * dolar;
    } else if (dropdownDe == 'real' && dropdownPara == 'dolar') {
      conversao = valor / dolar;
    } else if (dropdownDe == 'real' && dropdownPara == 'euro') {
      conversao = valor / euro;
    } else if (dropdownDe == 'euro' && dropdownPara == 'real') {
      conversao = valor * euro;
    } else if (dropdownDe == 'euro' && dropdownPara == 'dolar') {
      conversao = valor * euroDolar;
    } else if (dropdownDe == 'dolar' && dropdownPara == 'euro') {
      conversao = valor / euroDolar;
    }

    setState(() {
      resultado = 'Resultado: $conversao';
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: _titulo(),
      body: _corpo(),
    ));
  }

  _titulo() {
    return AppBar(
      title: const Text('Conversor de Moedas: Euro, Dólar e Real'),
      backgroundColor: Colors.cyan[700],
    );
  }

  _corpo() {
    return (Container(
      padding: EdgeInsets.all(32),
      child: Column(
        children: [
          _inputValor(),
          _dropdownDe(),
          _dropdownPara(),
          _button(),
          _resultado(),
        ],
      ),
    ));
  }

  _inputValor() {
    return TextField(
      controller: inputValor,
      decoration: InputDecoration(
        labelText: 'Valor: ',
      ),
      keyboardType: TextInputType.number,
    );
  }

  _dropdownDe() {
    return Container(
      child: DropdownButton<String>(
        value: dropdownDe,
        items: [
          DropdownMenuItem(
            value: '',
            child: Text('De: '),
          ),
          DropdownMenuItem(
            value: 'euro',
            child: Text('Euro'),
          ),
          DropdownMenuItem(
            value: 'dolar',
            child: Text('Dólar'),
          ),
          DropdownMenuItem(
            value: 'real',
            child: Text('Real'),
          ),
        ],
        onChanged: (String? value) {
          setState(() {
            dropdownDe = value!;
          });
        },
      ),
    );
  }

  _dropdownPara() {
    return Container(
      child: DropdownButton<String>(
        value: dropdownPara,
        items: [
          DropdownMenuItem(
            value: '',
            child: Text('Para: '),
          ),
          DropdownMenuItem(
            value: 'euro',
            child: Text('Euro'),
          ),
          DropdownMenuItem(
            value: 'dolar',
            child: Text('Dólar'),
          ),
          DropdownMenuItem(
            value: 'real',
            child: Text('Real'),
          ),
        ],
        onChanged: (String? value) {
          setState(() {
            dropdownPara = value!;
          });
        },
      ),
    );
  }

  _button() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(top: 16),
      child: RaisedButton(
        color: Colors.green[600],
        padding: EdgeInsets.all(16),
        child: Text('Converter',
            style: TextStyle(color: Colors.white, fontSize: 16)),
        onPressed: () {
          converter();
        },
      ),
    );
  }

  _resultado() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(top: 16),
      child: Text(resultado,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    );
  }
}
