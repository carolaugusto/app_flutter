import 'package:flutter/material.dart';

class Imc extends StatefulWidget {
  const Imc({Key? key}) : super(key: key);

  @override
  CalculoImc createState() => CalculoImc();
}

class CalculoImc extends State<Imc> {
  TextEditingController peso = TextEditingController();
  TextEditingController altura = TextEditingController();

  String resultado = "";

  void calcularImc() {
    setState(() {
      double? pesoInserido = double.tryParse(peso.text);
      double? alturaInserido = double.tryParse(altura.text);

      if (pesoInserido == null || alturaInserido == null) {
        resultado = "Preencha os campos";
      } else {
        alturaInserido = alturaInserido / 100;

        double imc = pesoInserido / (alturaInserido * alturaInserido);

        if (imc < 18.6) {
          resultado = "Abaixo do Peso $imc";
        } else if (imc >= 18.6 && imc < 24.9) {
          resultado = "Peso Ideal $imc";
        } else if (imc >= 24.9 && imc < 29.9) {
          resultado = "Levemente Acima do Peso $imc)";
        } else if (imc >= 29.9 && imc < 34.9) {
          resultado = "Obesidade Grau I $imc)";
        } else if (imc >= 34.9 && imc < 39.9) {
          resultado = "Obesidade Grau II $imc)";
        } else if (imc >= 40) {
          resultado = "Obesidade Grau III $imc";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calcular IMC"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Calcule seu IMC",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Digite seu peso",
                ),
                style: TextStyle(
                  fontSize: 18,
                ),
                controller: peso,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Digite sua altura.",
                ),
                style: TextStyle(
                  fontSize: 18,
                ),
                controller: altura,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Verificar",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: calcularImc,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  resultado,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
