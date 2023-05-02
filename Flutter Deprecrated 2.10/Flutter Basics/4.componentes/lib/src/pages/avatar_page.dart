import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  static final pageName = 'avatar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://estaticos.muyinteresante.es/media/cache/1140x_thumb/uploads/images/gallery/5b0e72725cafe87d7a3c986b/mini-pig-manchas-morro.jpg'),
              // radius: 22.0, MOdificar el radio de la foto de perfil
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),

      body: Center(
        child: FadeInImage(
            image: NetworkImage('https://estaticos.muyinteresante.es/media/cache/1140x_thumb/uploads/images/gallery/5b0e72725cafe87d7a3c986b/mini-pig-manchas-morro.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
          )
        ),

      floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add_location),
            onPressed: () => Navigator.pop(context) // Popea la ruta anterior
          ),
    );
  }
}