import 'package:flutter/material.dart';
import 'package:peliculas/src/providers/peliculas_providers.dart';
import 'package:peliculas/src/widgets/card_swiper_widget.dart';
import 'package:peliculas/src/widgets/movie_horizontal.dart';



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

      future: peliculasProvider.getEnCines(),
      builder: (BuildContext context, AsyncSnapshot<List> snapshot) {

        if(snapshot.hasData) {
           return CardSwiper(peliculas: snapshot.data);
        } else {
          return Container(
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
            
        })
          // Text('Populares', style: Theme.of(context).textTheme.headline6,),
        ],
      ),
    );
  }

}