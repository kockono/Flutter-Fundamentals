import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return InkWell( // Lienzo o tintero 
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Navegando"))
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0
        ),
        height: 50.0, // Altura del boton
        width: 180.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
            colors: [
              Color(0xFF4268D3),
              Color(0xFF584CD1),
            ],
            begin: FractionalOffset(0.2, 0.0),
            end  : FractionalOffset(1.0, 0.0),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp // Modo de gradiente

          )
        ),
        child: Center(
          child: Text("Navegar", style: TextStyle(
            color: Colors.white,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold,
            fontSize: 18.0
          ),),
          
        ),
      ),
    );
  }
}