import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arte'),
        backgroundColor: Color.fromRGBO(32,37,40, 1.0),

      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal:10.0, vertical:10.0),
        // padding: EdgeInsets.all(20), // Simetrico
        children: <Widget>[
          // _cardTipo1(),
          // SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo3(),
          SizedBox(height: 30.0,),
          _cardTipo4(),
          SizedBox(height: 30.0,),
          _cardTipo5(),   
          SizedBox(height: 30.0,),

        ],
      )
    );
  }

  Widget _cardTipo1() {

    return Card(
      elevation: 1.0, // La sombra de la tarjeta
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15.0) ), // Bordeado
      child: Column(
        children: <Widget>[
          ListTile (
            leading: Icon (Icons.photo_album, color: Colors.blue),
            title: Text('Arte '),
            subtitle: Text('Aquí podremos encontrar el arte del videojuego'),
          ),
        ]
      ),
    );

  }

  _cardTipo2() {

    final card = Container (
      // clipBehavior: Clip.antiAlias, // Respete los ordenes de la tarjeta no lo hace
      child: Column(
        children: <Widget>[
          FadeInImage(
             image: AssetImage('assets/Cave.png'),
             placeholder: AssetImage('assets/jar-loading.gif'),
             fadeInDuration: Duration( milliseconds: 300 ),
             height: 400.0, // Altura
             fit: BoxFit.cover, // Como va abarcar la imagen
            ),
            // Image(
            //   image: NetworkImage('https://static.vecteezy.com/system/resources/previews/000/246/312/original/mountain-lake-sunset-landscape-first-person-view-vector.jpg'),
            // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Cueva de los dragones')
            )
        ],
      ),
    );

    return Container( // Metimos en un contenedor la variable card
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0, // Expande el spread radius
            offset: Offset(2.0, 10.0), // Plano carteseano del blur
          )
        ]
        // color: Colors.red // Darle color al radio
        ),

      child: ClipRRect( // Retangulo para bordear
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }

    _cardTipo3() {

    final card = Container (
      // clipBehavior: Clip.antiAlias, // Respete los ordenes de la tarjeta no lo hace
      child: Column(
        children: <Widget>[
          FadeInImage(
             image: AssetImage('assets/Sleeping.png'),
             placeholder: AssetImage('assets/jar-loading.gif'),
             fadeInDuration: Duration( milliseconds: 300 ),
             height: 400.0, // Altura
             fit: BoxFit.cover, // Como va abarcar la imagen
            ),
            // Image(
            //   image: NetworkImage('https://static.vecteezy.com/system/resources/previews/000/246/312/original/mountain-lake-sunset-landscape-first-person-view-vector.jpg'),
            // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Durmiendo')
            )
        ],
      ),
    );

    return Container( // Metimos en un contenedor la variable card
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0, // Expande el spread radius
            offset: Offset(2.0, 10.0), // Plano carteseano del blur
          )
        ]
        // color: Colors.red // Darle color al radio
        ),

      child: ClipRRect( // Retangulo para bordear
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }

  _cardTipo4() {

    final card = Container (
      // clipBehavior: Clip.antiAlias, // Respete los ordenes de la tarjeta no lo hace
      child: Column(
        children: <Widget>[
          FadeInImage(
             image: AssetImage('assets/Spikes.png'),
             placeholder: AssetImage('assets/jar-loading.gif'),
             fadeInDuration: Duration( milliseconds: 300 ),
             height: 400.0, // Altura
             fit: BoxFit.cover, // Como va abarcar la imagen
            ),
            // Image(
            //   image: NetworkImage('https://static.vecteezy.com/system/resources/previews/000/246/312/original/mountain-lake-sunset-landscape-first-person-view-vector.jpg'),
            // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Saltando')
            )
        ],
      ),
    );

    return Container( // Metimos en un contenedor la variable card
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0, // Expande el spread radius
            offset: Offset(2.0, 10.0), // Plano carteseano del blur
          )
        ]
        // color: Colors.red // Darle color al radio
        ),

      child: ClipRRect( // Retangulo para bordear
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }

  _cardTipo5() {

    final card = Container (
      // clipBehavior: Clip.antiAlias, // Respete los ordenes de la tarjeta no lo hace
      child: Column(
        children: <Widget>[
          FadeInImage(
             image: AssetImage('assets/Standing.png'),
             placeholder: AssetImage('assets/jar-loading.gif'),
             fadeInDuration: Duration( milliseconds: 300 ),
             height: 400.0, // Altura
             fit: BoxFit.cover, // Como va abarcar la imagen
            ),
            // Image(
            //   image: NetworkImage('https://static.vecteezy.com/system/resources/previews/000/246/312/original/mountain-lake-sunset-landscape-first-person-view-vector.jpg'),
            // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Bosque 2')
            )
        ],
      ),
    );

    return Container( // Metimos en un contenedor la variable card
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0, // Expande el spread radius
            offset: Offset(2.0, 10.0), // Plano carteseano del blur
          )
        ]
        // color: Colors.red // Darle color al radio
        ),

      child: ClipRRect( // Retangulo para bordear
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }

}