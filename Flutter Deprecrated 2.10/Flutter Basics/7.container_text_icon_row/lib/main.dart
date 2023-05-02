// Componentes
import 'package:container_text_icon_row/platzi_trips.dart';

import 'package:flutter/material.dart';

import 'package:flutter/services.dart'; // Libreria para cambiar la barra del top

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    // SystemChrome.setEnabledSystemUIOverlays([]); // quitar lo de arriba

    SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light
    )
  );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: PlatziTrips(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // body: PlatziTrips()
    
      ); // This trailing comma makes auto-formatting nicer for build methods.

  }
}
