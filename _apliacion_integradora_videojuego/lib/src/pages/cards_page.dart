import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arte'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal:10.0, vertical:10.0),
        // padding: EdgeInsets.all(20), // Simetrico
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
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
             image: NetworkImage('https://static.vecteezy.com/system/resources/previews/000/246/312/original/mountain-lake-sunset-landscape-first-person-view-vector.jpg'),
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
            child: Text('Paisaje')
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






//   _cardTipo2() {

//     final card = Card (
//       // clipBehavior: Clip.antiAlias, // Respete los ordenes de la tarjeta
//       child: Column(
//         children: <Widget>[
//           FadeInImage(
//              image: NetworkImage('https://static.vecteezy.com/system/resources/previews/000/246/312/original/mountain-lake-sunset-landscape-first-person-view-vector.jpg'),
//              placeholder: AssetImage('assets/jar-loading.gif'),
//              fadeInDuration: Duration( milliseconds: 300 ),
//              height: 400.0, // Altura
//              fit: BoxFit.cover, // Como va abarcar la imagen
//             ),
//           // Image(
//           //   image: NetworkImage('https://static.vecteezy.com/system/resources/previews/000/246/312/original/mountain-lake-sunset-landscape-first-person-view-vector.jpg'),
//           // ),
//           Container(
//             padding: EdgeInsets.all(10.0),
//             child: Text('Paisaje')
//             )
//         ],
//       ),
//     );
//     return Container( // Metimos en un contenedor la variable card
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(30.0),
//         // color: Colors.red // Darle color al radio
//         ),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(30.0),
//         child: card,
//       ),
//     );
//   }
// }