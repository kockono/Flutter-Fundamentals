import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  static final pageName = 'avatares';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatares'),
        backgroundColor: Color.fromRGBO(32,37,40, 1.0),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/pixel-heart.png'),
              backgroundColor: Colors.transparent,
            ),
          ),
        ],
      ),

      body: Center(
        child: FadeInImage(
            image: AssetImage('assets/queen.png'),
            height: 100.0,
            width:  100.0,
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
          )
        ),
    );
  }
}