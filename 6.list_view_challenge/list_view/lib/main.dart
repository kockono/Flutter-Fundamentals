import 'package:flutter/material.dart';

import 'package:list_view/list_characters.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  String _name = "DESIGNERS";

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      home: Scaffold(
        backgroundColor: Colors.white,
        
        appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade400,
        centerTitle: true,
        
        title: Text(
          _name,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,

          ),
        ),
        ),
        body: ListCharacters(),   
        
      ),

      
      
    );
  }
}