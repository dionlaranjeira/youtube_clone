import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate<String>{
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return[
      IconButton(
          onPressed: (){query = "";},
          icon: Icon(Icons.clear)),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        onPressed: (){close(context, "");},
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    // print("resultado: pesquisa reaizada");
    close(context, query);
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    /*
    List<String>? lista = [];

    if(query.isNotEmpty){
      lista = ["Android", "Android navegação", "IOS", "Jogos"].where(
          (texto) => texto.toLowerCase().startsWith(query.toLowerCase())).toList();

          return ListView.builder(
          itemCount: lista.length,
          itemBuilder: (context, index){
              return ListTile(
                onTap: (){
                  close(context, lista![index]);
                },
                title: Text(lista![index]),
              );
          });

    }
    */
    return Container();

  }
  
}