import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


void main() => runApp(MaterialApp(
  title: "Poke App",
  home: HomeScreen(),
  debugShowCheckedModeBanner: false,
));

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  var pokeApi = "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";
   List? pokedex;

  @override
  void initState() {
    super.initState();
    if(mounted){
      fetchPokemonData();
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
         pokedex != null ? Expanded(child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:
          2, childAspectRatio: 1.4,
          ), itemCount: pokedex?.length,
          itemBuilder: (context, index){
            return Card(
              child: Column(
                children: [
                  Text(
                      pokedex![index]['name']?? "Sin datos"
                  ),
                  CachedNetworkImage(imageUrl: pokedex![index]['img'])
                ],
              )
            );
          },
          )) : Center(
           child: CircularProgressIndicator()
         )
        ],
      )
    );
  }

  void fetchPokemonData(){
    var url = Uri.https("raw.githubusercontent.com", "/Biuni/PokemonGO-Pokedex/master/pokedex.json");
    http.get(url).then((value){
      var decodeJson = jsonDecode(value.body);
      //print(decodeJson);
      pokedex = decodeJson['pokemon'];
      print(pokedex);
      setState(() {

      });
    });
  }
}
