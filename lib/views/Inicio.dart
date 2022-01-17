import 'package:flutter/material.dart';
import 'package:youtube_clone/Api.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  @override
  Widget build(BuildContext context) {

    Api api = Api();
    api.pesquisar("");

    return Container(
      child: const Center(
        child: Text("Inícioooo"),
      ),
    );
  }
}
