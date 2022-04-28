import 'package:flutter/material.dart';
import 'package:meu_perfil_drawer_navigation/pages/Pessoal.dart';
import 'package:meu_perfil_drawer_navigation/pages/Formacao.dart';
import 'package:meu_perfil_drawer_navigation/pages/Experiencia.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 0;

  final telas = [
    Center(child: Text('Home')),
    Pessoal(),
    Formacao(),
    Experiencia(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Meu Perfil com Drawer Navigation"),
          backgroundColor: Colors.lightGreen,
        ),
        backgroundColor: Colors.white,
        body: telas[_currentPage],
        drawer: Drawer(
            child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              accountName: Text('Ana Carolina Augusto'),
              accountEmail: Text('ana.augusto2010@hotmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6w-f7q77f6ntbx0OKZCZBPDEmhqm-5NGU2g&usqp=CAU'),
              ),
            ),
            ListTile(
              title: Text('Home'),
              trailing: Icon(Icons.home),
              onTap: () {
                setState(() {
                  _currentPage = 0;
                });
              },
            ),
            ListTile(
              title: Text('Pessoal'),
              trailing: Icon(Icons.account_box_outlined),
              onTap: () {
                setState(() {
                  _currentPage = 1;
                });
              },
            ),
            ListTile(
              title: Text('Formação'),
              trailing: Icon(Icons.school_outlined),
              onTap: () {
                setState(() {
                  _currentPage = 2;
                });
              },
            ),
            ListTile(
              title: Text('Experiências'),
              trailing: Icon(Icons.work),
              onTap: () {
                setState(() {
                  _currentPage = 3;
                });
              },
            ),
          ],
        )),
      ),
    );
  }
}
