import 'package:flutter/material.dart';
import 'package:ldsw_utilizcacion_de_widgets/columns.dart';
import 'package:ldsw_utilizcacion_de_widgets/rows.dart';
import 'package:ldsw_utilizcacion_de_widgets/stack.dart';

void main() {
  runApp(EjemplosWidgets());
}

class EjemplosWidgets extends StatelessWidget {

  @override
  Widget build(BuildContext){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          color: Colors.black,
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Columns(),
                Rowss(),
                Stacks()
              ],
            ),
          ),
        ),
      ),
    );
  }

}

