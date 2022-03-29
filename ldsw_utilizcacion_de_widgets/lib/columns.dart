import 'package:flutter/material.dart';
import 'package:ldsw_utilizcacion_de_widgets/contenedor.dart';

class Columns extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
     // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
          Boxcontenedor(Colors.red, 1, 100.0),
          Boxcontenedor(Colors.red, 2, 100.0)
      ],
    );
  }
}