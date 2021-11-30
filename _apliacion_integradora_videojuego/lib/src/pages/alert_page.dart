import 'package:flutter/material.dart';


class AlertPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Sección de noticias'),
             backgroundColor: Color.fromRGBO(32,37,40, 1.0),
            
          ),
          body: Center(
            child: _cardTipo1(), 
            ),
          );
  }

  Widget _cardTipo1() {

    return Card(
      elevation: 1.0, // La sombra de la tarjeta
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15.0) ), // Bordeado
      child: _seccionDeNoticias(),
    );
  }
  
  Widget _seccionDeNoticias() {
    return Container(
    child: Column(
      children: <Widget>
      [
        ListTile (
            leading: Image(
              image: NetworkImage('https://queens-knights.netlify.app/assets/img/goblin.png'),
            ),
            title: Text('Goblin News'),
            trailing: Text('20/11/2021'),
            subtitle: Text('Se considerara la elaboración de futuros bosses!'),
          ),
          ListTile (
            leading: Image(
              image: NetworkImage('https://queens-knights.netlify.app/assets/img/monita.png'),
            ),
            title: Text('Queen\'s News'),
            trailing: Text('21/11/2021'),
            subtitle: Text('Los creadores no tienen contemplado crear Queen\'s Knights 2'),
          ),
          ListTile (
          leading: Image(
            image: NetworkImage('https://queens-knights.netlify.app/assets/img/monita.png'),
          ),
          title: Text('Queen\'s News'),
          trailing: Text('23/11/2021'),
          subtitle: Text('Se creara una expansión con mas niveles'),
        ),
        ListTile (
            leading: Image(
              image: NetworkImage('https://queens-knights.netlify.app/assets/img/goblin.png'),
            ),
            title: Text('Goblin News'),
            trailing: Text('27/11/2021'),
            subtitle: Text('Este juego es lo maximo, pero eventualmente se mejorara'),
          ),
        ListTile (
        leading: Image(
          image: NetworkImage('https://queens-knights.netlify.app/assets/img/monita.png'),
        ),
        title: Text('Queen\'s News'),
        trailing: Text('30/11/2021'),
        subtitle: Text('Tenemos una nueva sección el cual damos una probada del futuro nuevo booss morfico'),
      ),
      ]
    ));
  }
}