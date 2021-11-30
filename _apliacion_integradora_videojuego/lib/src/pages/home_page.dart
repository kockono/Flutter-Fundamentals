import 'package:flutter/material.dart';

import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32,37,40, 1.0),
        title: Text('Queen\'s Knights'),
        actions: [
          Container(
            padding: EdgeInsets.all(6.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://queens-knights.netlify.app/assets/img/monita.png'),
              backgroundColor: Colors.transparent,
            ),
          ),
        ],
        ),
      body: _lista(),
      
    );

  }

  Widget _lista() {
    // print(menuProvider.opciones);

    return FutureBuilder( // Promesa Asyncrona
      future: menuProvider.cargarData(), // Necesite un future toma una foto de los datos
      initialData: [], // Los datos que tendran por default, es opcional alt=
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data , context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    // if(data == null) {return [];} // Si esta vacia rellena la lista en un arreglo vacio

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_down),
        onTap: () {
            // Estamos llamando a un push name, lo definimos en el home page 
          Navigator.pushNamed(context, opt['ruta']); 

          // final route = MaterialPageRoute(
          //   builder: ( context ) =>  AlertPage()
          // );
          // Navigator.push(context, route); //El context tiene la explicacion de mi pagina que hay antes y despues

        },
      );

      opciones..add(widgetTemp)..add(Divider());
    });
    return opciones;
  }
}
