import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
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
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: 3,
          fixedColor: Colors.red,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "home", backgroundColor: Colors.red),
            BottomNavigationBarItem(icon: Icon(Icons.whatshot),label: "Em alta",backgroundColor: Colors.orange),
            BottomNavigationBarItem(icon: Icon(Icons.add_box),label: "Inscrições",backgroundColor: Colors.blue),
            BottomNavigationBarItem(icon: Icon(Icons.library_add_rounded),label: "Biblioteca",backgroundColor: Colors.green),
          ]),
    );
  }
}
