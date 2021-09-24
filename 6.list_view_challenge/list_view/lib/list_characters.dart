import 'package:flutter/material.dart';

class ListCharacters extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    
    return ListView(

      children: [
        
        _fotos(),
        Divider(thickness: 1.0,),
        _fotos(),
        Divider(thickness: 1.0,),

      ],
    );
  }

  Widget _fotos() {
    return Container(

      child: Row(
        children: [
          _foto(),
          _titleExprience(),
          _mensaje()
          
      ],
      ),
    );
  }


  Widget _foto() {

      return Container(

        margin: EdgeInsets.only(
          right: 10.0,
          left: 8.0,
        ),

      width: 60.0,
      height: 80.0,
      decoration: BoxDecoration( 
        
        shape: BoxShape.circle,
        image: DecorationImage(
          // alignment: Alignment.topLeft,
          image: AssetImage("assets/people.jpg"),
        ),
      ),
      );
   

  }

  Widget _comment() {

    return Container(
      margin: EdgeInsets.only(
        right: 75.0,
        
      ),
      child: Text(
      "Cerdito",
      textAlign: TextAlign.start,
      style: TextStyle(
          fontSize: 14.0,
      ),
      ),
      
    );

    
  }

  Widget _titleExprience() {

    return Column(
      children: [
        _comment(),
        _experience()
      ],
    );
  }

  Widget _experience() {

    return Container(
      child: Text(
      "Experience: 15 years",
      textAlign: TextAlign.start,
      
      style: TextStyle(
          fontSize: 13.0,
          inherit: true,
      ),
      ),
      
    );
  }

  Widget _mensaje(){
    return Container(
      margin: EdgeInsets.only(
        left: 150.0
      ),
      child: Icon(Icons.mail),
    );
  }
  
}