import 'package:flutter/material.dart';

class Boxcontenedor extends StatelessWidget{
    Color color;
    int numero;
    double ancho;

    Boxcontenedor(this.color,this.numero,this.ancho);

    @override
    Widget build(BuildContext context){
        return Container(
            width: this.ancho,
            height: this.ancho,
            color: this.color,
            child: Center(
                child: Text(
                    this.numero.toString(),
                    style: TextStyle(
                        fontSize: 30.0
                    ),
                ),
            ),
        );
    }
}