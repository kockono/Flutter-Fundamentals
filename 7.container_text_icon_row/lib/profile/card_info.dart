import 'package:container_text_icon_row/floating_action_button_green.dart';
import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final titlePrincipal = Text(
        "Knuckles Mountains Range",
        style: TextStyle(
            fontSize: 21.0,
            fontWeight: FontWeight.bold,

        ),
    );

    final description = Text(
      
      "Hikin water tail huntin natural bath, scenary Photografy",
      style: TextStyle(
        fontSize: 17.0,
        color: Colors.grey.shade400
      ),

    ); 

    final steps = Text(
      "Steps   389,890,450",
      style: TextStyle(
        fontSize: 18.0,
        color: Colors.amber
      ),
    );

    final box = Container(
      margin: EdgeInsets.only(
        top: 220,
        left: 63.0
        
      ),
      // padding:EdgeInsets.only(
        // top: 5.0,
        // left: 5.0,
        // right:  1.0
      // ),
        height: 110,
        width: 300,

        decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        color: Colors.white,
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0) // Posicion de la sombra en (X , Y)
          )
        ]
      ),
      child: Padding(
        padding: EdgeInsets.all(11.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titlePrincipal,
              description,
              steps
          ],),
      ) 
    );

    return Stack(
      alignment: Alignment(0.9,1.02),
      children: [
        box,
        FloatingActionButtonGreen()
      ],
    );

  }
}