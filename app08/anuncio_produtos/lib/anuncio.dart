import 'package:flutter/material.dart';

class Anuncio extends StatefulWidget {
  const Anuncio({Key? key}) : super(key: key);

  @override
  Produtos createState() => Produtos();
}

class Produtos extends State<Anuncio> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Colors.white,
        body: _corpo(),
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Anuncio Produtos"),
      centerTitle: true,
      backgroundColor: Colors.green,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _texto(),
            _carrosel(),
          ],
        ),
      ),
    );
  }

  _carrosel() {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _foto('img1.jpeg'),
          _foto('img2.jpeg'),
          _foto('img3.jpeg'),
          _foto('img4.jpeg'),
          _foto('img5.jpeg'),
          _foto('img6.jpeg'),
          _foto('img7.jpeg'),
        ],
      ),
    );
  }

  _foto(String nomeFoto) {
    return Image.asset(
      "assets/images/$nomeFoto",
      height: 200,
      width: 200,
      //fit: BoxFit.fill,
      //fit: BoxFit.contain,
      fit: BoxFit.cover,
    );
  }

  _texto() {
    return Text(
      "Chocolates Callebaut",
      style: TextStyle(
          color: Colors.blue,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          decorationColor: Colors.red,
          decorationStyle: TextDecorationStyle.wavy),
    );
  }
}
