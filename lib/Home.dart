import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {

    List<Widget> telas = [
      Inicio(),
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
              onPressed: (){print("video");},
              icon: const Icon(Icons.videocam)),
          IconButton(
              onPressed: (){print("pesquisar");},
              icon: const Icon(Icons.search)),
          IconButton(
              onPressed: (){print("conta");},
              icon: const Icon(Icons.account_circle)),
        ],
      ),
      body: telas[_indiceAtual],
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
