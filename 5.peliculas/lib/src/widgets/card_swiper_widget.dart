import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';


class CardSwiper extends StatelessWidget {

  final List<dynamic> peliculas;

  CardSwiper({@required  this.peliculas}); // Lo inicializamos ene l constructor, manera resumida
    // Obliga que le manden la lista de peliculas

  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size; // Modificar el tamaño de un Widget
    

    return Container(
      padding: EdgeInsets.only(top: 10.0),
      width: double.infinity, // Usa todo el ancho posible de aquí hasta aya
      height: 300.0,
      child: Swiper(
          layout: SwiperLayout.STACK,
          itemWidth: _screenSize.width * 0.56,   // El ancho del swipper
          itemHeight: _screenSize.height * 0.5, // El alto del swipper
          itemBuilder: (BuildContext context,int index){
            return ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: FadeInImage(
                // https://static.wikia.nocookie.net/gravity-falls-en-espanol/images/8/86/Pato_1.png/revision/latest?cb=20180311190523&path-prefix=es
                image: NetworkImage(peliculas[index].getPosterImg() ),
                placeholder: AssetImage('assets/img/no-image.jpg'),
                fit: BoxFit.cover,
              // fit: BoxFit.fill,// Con cover se redondea la imagen
              ), 
            );
            
          },
          itemCount: peliculas.length,
          // pagination: new SwiperPagination(),   // Los puntos de abajo de navegacion
          control: new SwiperControl(),         // Las flechas a los lados
          
        ),
    );
  }
}