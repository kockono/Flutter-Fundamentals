import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {

  @override
  _FloatingActionButtonGreenState createState() => _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {

  bool _favoritos = false;
  String _mensaje = "Agregaste a Favoritos";

  void onPrssedFav() {

       setState(() {
          _favoritos = !_favoritos;
        });
        _favoritos ? _mensaje = "Agregaste a Favoritos":_mensaje = "Eliminado";

     ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(
         content: Text(_mensaje),
         duration: Duration(milliseconds: 750),
       ));
  }


  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true, // Tamaño del boton
      tooltip: "Fav",
      onPressed: onPrssedFav,
      child: Icon(
        _favoritos ? Icons.favorite:Icons.favorite_border
        ),


    );
  }
}