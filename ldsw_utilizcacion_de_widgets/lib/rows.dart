import 'package:flutter/material.dart';
import 'package:ldsw_utilizcacion_de_widgets/contenedor.dart';

class Rowss extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      //crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Boxcontenedor(Colors.blue, 3, 100.0),
        Boxcontenedor(Colors.blue, 4, 100.0)
      ],
    );
  }
}