import 'package:flutter/material.dart';

class Vagas extends StatefulWidget {
  const Vagas({Key? key}) : super(key: key);

  @override
  _Vagas createState() => _Vagas();
}

class _Vagas extends State<Vagas> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: _titulo(),
      body: body(),
    ));
  }

  _titulo() {
    return AppBar(
      title: const Text('Vagas de Emprego para TI'),
      backgroundColor: Colors.blueGrey,
    );
  }

  body() {
    return SingleChildScrollView(
        child: Container(
      padding: EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Card(
              color: Colors.grey[100],
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Desenvolvedor Java Sênior",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "Salário: 15000",
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        "Descrição: Trabalho home office",
                        style: TextStyle(fontSize: 14),
                      ),
                      ButtonTheme(
                          child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('Aplicar'),
                            onPressed: () {},
                          ),
                        ],
                      ))
                    ]),
              ),
            ),
            Card(
              color: Colors.grey[100],
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Estagiário de Desenvolvimento .NET",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "Salário: 1000",
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        "Descrição: Trabalho home office",
                        style: TextStyle(fontSize: 14),
                      ),
                      ButtonTheme(
                          child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('Aplicar'),
                            onPressed: () {},
                          ),
                        ],
                      ))
                    ]),
              ),
            ),
            Card(
              color: Colors.grey[100],
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Analista de Sistemas Jr",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "Salário: 5000",
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        "Descrição: Trabalho home office",
                        style: TextStyle(fontSize: 14),
                      ),
                      ButtonTheme(
                          child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('Aplicar'),
                            onPressed: () {},
                          ),
                        ],
                      ))
                    ]),
              ),
            ),
            Card(
              color: Colors.grey[100],
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Técnico de Informática",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "Salário: 1500",
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        "Descrição: Trabalho presencial",
                        style: TextStyle(fontSize: 14),
                      ),
                      ButtonTheme(
                          child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('Aplicar'),
                            onPressed: () {},
                          ),
                        ],
                      ))
                    ]),
              ),
            ),
            Card(
              color: Colors.grey[100],
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Estagiário de Desenvolvimento PHP",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "Salário: 1000",
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        "Descrição: Trabalho home office",
                        style: TextStyle(fontSize: 14),
                      ),
                      ButtonTheme(
                          child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('Aplicar'),
                            onPressed: () {},
                          ),
                        ],
                      ))
                    ]),
              ),
            ),
            Card(
              color: Colors.grey[100],
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Desenvolvedor FullStack",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "Salário: 10000",
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        "Descrição: Trabalho home office",
                        style: TextStyle(fontSize: 14),
                      ),
                      ButtonTheme(
                          child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('Aplicar'),
                            onPressed: () {},
                          ),
                        ],
                      ))
                    ]),
              ),
            ),
            Card(
              color: Colors.grey[100],
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Engenheiro(a) de Software",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "Salário: 17000",
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        "Descrição: Trabalho home office",
                        style: TextStyle(fontSize: 14),
                      ),
                      ButtonTheme(
                          child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('Aplicar'),
                            onPressed: () {},
                          ),
                        ],
                      ))
                    ]),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
