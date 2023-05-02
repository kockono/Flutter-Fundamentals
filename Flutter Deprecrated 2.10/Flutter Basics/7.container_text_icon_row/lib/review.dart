import 'package:flutter/material.dart';

class Review extends StatelessWidget {

  String pathImage = "asset/img/people.jpg";
  String name = "Varuna Yass";
  String details = "1 review 5 photos";
  String comment = "There is an amazin place in siri lament";

  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {

    final userComment = Container(
       margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
            fontSize: 13.0,
            fontWeight: FontWeight.w900,
          color:Color(0xFFa3a5a7)
        ),
        ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
      top: 5.0,
      left: 20.0
     ),
     child: Text(
       details
     ),
    );

  final userName = Container(
    margin: EdgeInsets.only(
      left: 20.0
    ),
    child: Text(
      name,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontFamily: "Lato",
          fontSize: 13.0,
        color:Color(0xFFa3a5a7)
      ),
      ),
  );

  final usertDetails = Column(
    crossAxisAlignment: CrossAxisAlignment.start, // Se alinea a la izquierda
    children: <Widget>[
      userName,
      userComment,
      userInfo,
      
    ],
  );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left:20.0,

      ),
      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover, // toma el centro de la foto
          image: AssetImage(pathImage),
        ),
      ),
    );

    return Row(
      children: <Widget>[
        photo,
        usertDetails
      ],
    );
  }
}