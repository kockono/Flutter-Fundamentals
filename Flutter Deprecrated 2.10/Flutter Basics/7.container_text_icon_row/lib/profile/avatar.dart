import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  @override


  Widget build(BuildContext context) {


    final avatar = Container(
         margin: EdgeInsets.only(
              top: 10.0,
              left: 20.0,
              right: 20.0
            ),
          
          child: CircleAvatar(
            
            radius: 36.5,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://estaticos.muyinteresante.es/media/cache/1140x_thumb/uploads/images/gallery/5b0e72725cafe87d7a3c986b/mini-pig-manchas-morro.jpg'),
              radius: 35.0,  // MOdificar el radio de la foto de perfil
            ),

          ),
    );

    final title = Container(
       margin: EdgeInsets.only(
            top:5.0,
            bottom: 5.0
            ),
       child:Text(
           "Kockono Marquez",
           style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
           ),
       )
    );

    final subtitle = Container(
          child: Text(
            "kockono@gmail.com",
            style: TextStyle( 
              color: Colors.white30
            ),
          ),

    );

    final description = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title,
          subtitle
        ],
    );

    return Row(
      
      children: <Widget>[
        avatar,
        description
      ],
    );
  }
}