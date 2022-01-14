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
    );
  }
}
