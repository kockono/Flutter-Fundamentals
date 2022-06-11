import 'package:flutter/material.dart';
import 'package:peliculas/src/providers/peliculas_providers.dart';
import 'package:peliculas/src/widgets/card_swiper_widget.dart';
import 'package:peliculas/src/widgets/movie_horizontal.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';


class HomePage extends StatelessWidget {
  final peliculasProvider = PeliculasProvider();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: false, // Decentralizar el titulo
        title: Text('Películas en cines'),
        backgroundColor: Colors.indigo,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {

            })
        ],
      ),
      // body: SafeArea( // Se encarga de colocar las cosas donde el dispositivo puede desplegar información
      //   child: Text('Hola Mundo'),
      //   )
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget> [
            _swiperTarjertas(),
            _footer(context)
          ],
        ),
      ),
    );
  }

  Widget _swiperTarjertas() {
    return FutureBuilder(

      // Recogemos las peliculas
      future: peliculasProvider.getEnCines(), 
      builder: (BuildContext context, AsyncSnapshot<List> snapshot) {

        if(snapshot.hasData) { // La retornamos si es que existe informacion
           return CardSwiper(peliculas: snapshot.data);
        } else {
          return Container( // De lo contrario un circulo de carga
            height: 400.0,
            child:  Center(
              child: CircularProgressIndicator(),
            )
          );
        }
      },
    );

  }

  _footer(BuildContext context) {
    return Container(
      width: double.infinity, // Que tome el ancho infinitamente
      child: Column(
        children: [
          Text('Populares', style: Theme.of(context).textTheme.subtitle1,),
          
          FutureBuilder(
            future: peliculasProvider.getPopulares(),
            builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
              if(snapshot.hasData) {
                return MovieHorizontal(peliculas: snapshot.data,);
              } else {
                return Container(
                  child:  Center(child: CircularProgressIndicator()
                  )
                );
            }
            
        }),
        ButtonBar(children: [
          _crearBotones()
        ],)
          // Text('Populares', style: Theme.of(context).textTheme.headline6,),
        ],
      ),
    );
  }
  
  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 30.0),
        FloatingActionButton(onPressed: _postInFirebase, child: Icon(Icons.replay_outlined)),
      ],
    );
  }

 Future <http.Response> _postInFirebase() {
  return http.post(
    Uri.parse('https://kratos-thor-default-rtdb.firebaseio.com/events.json'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'title': "Prueba",
    }),
  );
  }
}