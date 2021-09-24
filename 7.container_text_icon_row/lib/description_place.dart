
import 'package:container_text_icon_row/button.dart';
import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {

  String namePLace;
  int stars;
  String descriptionPlace;
  DescriptionPlace(this.namePLace, this.descriptionPlace); //Constructor en dart

  @override
  Widget build(BuildContext context) {


    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0 
      ),
      child: Icon(
        (stars != 1) ? Icons.star:Icons.star_half,
        color: Color(0xFFf2C611),
        ),
    );

    final description = Container(
        margin: EdgeInsets.only(
          top: 20.0,
          right: 3.0,
          left: 20.0
        ),
        child: Text("$descriptionPlace"),

    );

    final descriptionTwo = Container(
        margin: EdgeInsets.only(
          top: 20.0,
          right: 3.0,
          left: 20.0
        ),
        child: Text(
          "$descriptionPlace",
          style: TextStyle(
            fontFamily: "Lato",

          )
        )
    );

    final titleStar = Row(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(
              top: 320.0,
              left: 20.0,
              right: 20.0
            ),

            child: Text(
              "$namePLace",
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
        ),
        Row(
          children: [
              star,
              star,
              star,
              star,
              star,
          ],
        ),
        
      ],
    );
      return Column(children: [
          titleStar,
          description,
          descriptionTwo,
          ButtonPurple()
      ]);
  }
}