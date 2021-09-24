import 'package:container_text_icon_row/profile/avatar.dart';
import 'package:container_text_icon_row/profile/card_info.dart';
import 'package:container_text_icon_row/profile/image_list.dart';
import 'package:container_text_icon_row/profile/navigation_bar.dart';
import 'package:container_text_icon_row/profile/profile.dart';
import 'package:flutter/material.dart';


class ProfileTrips extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final all = Container(

      height: 280.0,   // Altura del container
       decoration: BoxDecoration(
         gradient: LinearGradient(
            colors: [
              Color(0xFF4268D3),
              Color(0xFF584CD1),
            ],
            begin: FractionalOffset(0.2, 0.0), // Que tanto quiero que sea la orientación de mi gradiente
            end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp // Color por default
         )
       ),
       child: Column(
          children:[
            Profile(),
            Avatar(),
            Navigation(),
          ],
       ),
    );

      final imagenKnukle = Stack(
          children: [
            ImageList(), 
            CardInfo(),
          ],
      );

        final parche = Container(
        height: 20.0,
        margin: EdgeInsets.only(
          top: 200.0
        ),
        );

    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            parche,
            imagenKnukle,
            imagenKnukle,
            imagenKnukle,
          ],
        ),
        all,
      ],
    );
    
  }
  
}