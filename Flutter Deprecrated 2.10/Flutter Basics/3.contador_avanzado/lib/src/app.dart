import 'package:flutter/material.dart';
import 'package:flutter_vscode/src/pages/contador_pages.dart';
// import 'package:flutter_vscode/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Center(
          child: ContadorPage(),
          // child: HomePage(),
        ));
  }
}
