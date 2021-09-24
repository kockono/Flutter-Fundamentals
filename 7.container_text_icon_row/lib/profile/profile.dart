import 'package:flutter/material.dart';

class Profile extends StatelessWidget {

  String perfil = "Profile";

  @override
  Widget build(BuildContext context) {

    final profile = Container(
       margin: EdgeInsets.only(
         top: 50.0,
        left: 20.0
      ),

      child: Text(
        perfil,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold
        ),
        textAlign: TextAlign.left,
      ),
    );

    final settings = Container(
        margin: EdgeInsets.only(
        top: 50.0,
        left: 270.0,
        ),

        child:Icon(
          Icons.settings,
          color: Colors.grey.shade400,
          size: 16.0,
        )

    );

    final header = Container(
       margin: EdgeInsets.only(
        left: 0.0,
        bottom: 12.0
        ),
       child: Row(
        children: [
          profile,
          settings
        ], 
       ),


       alignment: Alignment(-0.9, -0.6),


    );


    return header;

  }
}

