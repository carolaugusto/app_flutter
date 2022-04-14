import 'package:flutter/material.dart';

class Escolha extends StatefulWidget {
  const Escolha({Key? key}) : super(key: key);

  @override
  EscolhaCombustivel createState() => EscolhaCombustivel();
}

class EscolhaCombustivel extends State<Escolha> {
  TextEditingController alcool = TextEditingController();
  TextEditingController gasolina = TextEditingController();
  String resultado = "";

  void verificar() {
    double? precoA = double.tryParse(alcool.text);
    double? precoG = double.tryParse(gasolina.text);
    if (precoA == null || precoG == null) {
      setState(() {
        resultado = "Por favor digite um valor!";
      });
    } else {
      if ((precoA / precoG) >= 0.7) {
        setState(() {
          resultado = "Melhor abastecer com a gasolina";
        });
      } else {
        setState(() {
          resultado = "Melhor abastecer com  o álcool";
        });
      }
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Álcool ou Gasolina"),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Center(
                  child: Image.network(
                    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fblog.bidu.com.br%2Falcool-ou-gasolina%2F&psig=AOvVaw3xTJBdcMe3ANRF9rbzQeya&ust=1649990305448000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCLC3p4XDkvcCFQAAAAAdAAAAABAO',
                    height: 200,
                    width: 200,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Veja qual a melhor opção para abastecer seu veículo",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Preço Alcool, ex: 6.58",
                  ),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  controller: alcool,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Preço Gasolina, ex: 7.00",
                  ),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  controller: gasolina,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: RaisedButton(
                    color: Colors.green,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Verificar",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    onPressed: verificar,
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
}
