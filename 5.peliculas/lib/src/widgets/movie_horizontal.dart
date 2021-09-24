import 'package:flutter/material.dart';

import 'package:peliculas/src/models/pelicula_model.dart';

class MovieHorizontal extends StatelessWidget {
  
  final List<Pelicula> peliculas;

  MovieHorizontal({@required this.peliculas}); // Opcional con ? o { }

  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;

    return Container(
      height: _screenSize.height * 0.2, // El tamaño de la pantalla 20%

      child: PageView(

        children: _tarjetas(),

      ),
    );


  }
    List<Widget> _tarjetas() {

      return peliculas.map( (pelicula)  {

          return Container(
            margin: EdgeInsets.only(
              right: 15.0
            ),
            child: Column(
              children: [
                FadeInImage(
                  image: NetworkImage( pelicula.getPosterImg() ),
                  placeholder: AssetImage('assets/img/no-image.jpg'),
                  fit: BoxFit.cover,
                  height: 150.0,
                )
              ],
            ),
          );
      }).toList();
      
    }
}