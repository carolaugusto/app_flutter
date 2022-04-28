import 'package:flutter/material.dart';

class Conta extends StatefulWidget {
  const Conta({Key? key}) : super(key: key);

  @override
  ContaBancaria createState() => ContaBancaria();
}

class ContaBancaria extends State<Conta> {
  TextEditingController nome = TextEditingController();
  TextEditingController idade = TextEditingController();
  String sexo = 'Selecione';
  String escolariedade = 'Selecione';
  double limiteConta = 0;
  bool nacionalidade = false;

  String resultadoConta = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Abertura de Conta"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(),
            _campoNome(),
            _campoIdade(),
            _dropdownSexo(),
            _dropdownEscolariedade(),
            _sliderLimite(),
            _switchNacionalidade(),
            _button(),
            _textResult()
          ],
        ),
      ),
    );
  }

  _campoNome() {
    return TextField(
      controller: nome,
      decoration: InputDecoration(labelText: 'Nome'),
    );
  }

  _campoIdade() {
    return TextField(
      controller: idade,
      decoration: InputDecoration(labelText: 'Idade'),
    );
  }

  _dropdownSexo() {
    return DropdownButton<String>(
        value: sexo,
        items: <String>['Selecione', 'Feminino', 'Masculino', 'Outro']
            .map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? valorSelecionado) {
          setState(() {
            sexo = valorSelecionado!;
          });
        });
  }

  _dropdownEscolariedade() {
    return DropdownButton<String>(
        value: escolariedade,
        items: <String>[
          'Selecione',
          'Fundamental - Incompleto',
          'Fundamental - Completo',
          'Médio - Incompleto',
          'Médio - Completo',
          'Superior - Incompleto',
          'Superior - Completo',
          'Pós-graduação - Incompleto',
          'Pós-graduação - Completo',
          'Mestrado - Incompleto',
          'Mestrado - Completo',
          'Doutorado - Incompleto',
          'Doutorado - Completo'
        ].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? valorSelecionado) {
          setState(() {
            escolariedade = valorSelecionado!;
          });
        });
  }

  _sliderLimite() {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
      Text("Limite:"),
      Slider(
        value: limiteConta,
        min: 0,
        max: 200,
        divisions: 20,
        label: limiteConta.round().toString(),
        onChanged: (double value) {
          setState(() {
            limiteConta = value;
          });
        },
      )
    ]);
  }

  _switchNacionalidade() {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
      Text("Brasileiro:"),
      Switch(
        value: nacionalidade,
        onChanged: (value) {
          setState(() {
            nacionalidade = value;
          });
        },
        activeTrackColor: Colors.lightGreenAccent,
        activeColor: Colors.blue,
      )
    ]);
  }

  _button() {
    return Container(
      padding: const EdgeInsets.only(top: 16),
      width: double.maxFinite,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.black,
        padding: EdgeInsets.all(15),
        child: const Text('Confirmar'),
        onPressed: () {
          resultadoConta =
              "Dados informados: \n Nome: ${nome.text}\n Idade: ${idade.text}\n Sexo: ${sexo}\n Ensino: ${escolariedade}\n Limite: ${limiteConta.round()}\n Brasileiro: ${nacionalidade}";
          setState(() {});
        },
      ),
    );
  }

  _textResult() {
    return Container(
      padding: const EdgeInsets.only(top: 16),
      width: double.maxFinite,
      child: Text(
        resultadoConta,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
