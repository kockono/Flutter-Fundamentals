import 'package:flutter/material.dart';

import 'dart:math';

class AnimatedContainerP extends StatefulWidget {

  @override
  _AnimatedContainerPState createState() => _AnimatedContainerPState();
}

class _AnimatedContainerPState extends State<AnimatedContainerP> {

  double _width  = 50.0;
  double _height = 50.0;
  Color  _color  = Colors.pink;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Animated Container'),
          ),
          body: Center(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              width     : _width,
              height    : _height,
              decoration: BoxDecoration(
                borderRadius : _borderRadius,
                color        : _color,

              ),
              
            ),
          ),

          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.play_arrow),
            onPressed: _cambiarTodo,
          ),
          
        );
  }



    void _cambiarTodo() {

      final random = Random();

      setState(() {

        _height = random.nextInt(400).toDouble();
        _width  = random.nextInt(400).toDouble();
        _color  = Color.fromRGBO(
          random.nextInt(255),
          random.nextInt(255),
          random.nextInt(255),
          1);
        _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());

      });
    }
}



