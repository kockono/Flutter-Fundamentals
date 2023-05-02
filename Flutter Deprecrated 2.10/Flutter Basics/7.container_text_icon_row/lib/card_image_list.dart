import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 380.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal, // Scroll horizontal
        children: <Widget>[
          CardImage("assets/img/people.jpg"),
          CardImage("assets/img/people.jpg"),
          CardImage("assets/img/people.jpg"),
        ],
      ),
    );
  }
}