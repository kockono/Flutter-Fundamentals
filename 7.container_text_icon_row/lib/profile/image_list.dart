import 'package:container_text_icon_row/floating_action_button_green.dart';
import 'package:container_text_icon_row/profile/card_info.dart';
import 'package:flutter/material.dart';


class ImageList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final image = Container(
      height: 240.0,
      width: 350.0,

      margin: EdgeInsets.only(
        top: 40.0,
        left: 35.0
      ),

      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
            image: AssetImage("assets/img/mountain.jpg")
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0) // Posicion de la sombra en (X , Y)
          )
        ]
      ),
    );

  return Stack(
    alignment: Alignment(0.9,1.1),
    children: [
      image,
    ],
  );


  }


}