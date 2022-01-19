import 'package:flutter/material.dart';
import 'package:youtube_clone/CustomSearchDelegate.dart';
import 'package:youtube_clone/views/Biblioteca.dart';
import 'package:youtube_clone/views/EmAlta.dart';
import 'package:youtube_clone/views/Inicio.dart';
import 'package:youtube_clone/views/Inscricoes.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indiceAtual = 0;
  String _pesquisa ="";
  @override
  Widget build(BuildContext context) {



    List<Widget> telas = [
      Inicio(_pesquisa),
      EmAlta(),
      Inscricoes(),
      Biblioteca()
    ];


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
            color: Colors.grey
        ),
        title: Image.asset("images/youtube.png", width: 100),
        actions: [
          IconButton(
              onPressed: () async {
                String? resultadoPesquisa = await showSearch(context: context, delegate: CustomSearchDelegate());
                setState(() {
                  _pesquisa = resultadoPesquisa!;
                });
                },
              icon: const Icon(Icons.search)),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: telas[_indiceAtual],
      ),
      bottomNavigationBar: BottomNavigationBar(
          // type: BottomNavigationBarType.shifting,
          type: BottomNavigationBarType.fixed,
          currentIndex: _indiceAtual,
          onTap: (indice){
            setState(() {
               _indiceAtual = indice;
            });
          },
          fixedColor: Colors.red,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "home",
                backgroundColor: Colors.white
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.whatshot),
                label: "Em alta",
                // backgroundColor: Colors.orange
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions),
                label: "Inscrições",
                // backgroundColor: Colors.blue
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_add_rounded),
                label: "Biblioteca",
                // backgroundColor: Colors.green
            ),
          ]),
    );
  }
}
