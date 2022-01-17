import 'dart:convert';
import 'dart:io';

const CHAVE_YOUTUBE_API = "AIzaSyCK8OcWwzLnUUj72h4oBapEdG-r_tJ0d_o";
const CHANNEL_ID = "UCVHFbqXqoYvEWM1Ddxl0QDg";
const BASE_URL = "https://www.googleapis.com/youtube/v3/";

class Api {
  pesquisar(String pesquisa) async{
    var url = "https://www.blockchain.com/ticker";
    HttpClient httpClient = new HttpClient();
    HttpClientRequest request = await httpClient.getUrl(Uri.parse(BASE_URL + "search"
        "?part=snippet"
        "&type=video"
        "&maxResults=20"
        "&order=date"
        "&key=$CHAVE_YOUTUBE_API"
        "&channelId=$CHANNEL_ID"
        "&maxResults=20"
        "&q=$pesquisa"
    ));
    HttpClientResponse response = await request.close();
    // todo - you should check the response.statusCode
    String reply = await response.transform(utf8.decoder).join();
    int statusCode = await response.statusCode;
    httpClient.close();

    if(statusCode == 200){
      Map<String, dynamic> respostaMap = json.decode(reply);
      print("RESPOSTA->"+ respostaMap["items"][0].toString());

    }

    // print("REPLY ->"+ reply);


    // _preco =  "R\$ " + respostaMap["BRL"]["buy"].toString().replaceAll(".", ",");
    // setState(() {
    //   _preco;
    // });
  }
}