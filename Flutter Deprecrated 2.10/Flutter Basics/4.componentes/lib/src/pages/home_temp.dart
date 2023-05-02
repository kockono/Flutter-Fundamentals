import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes temporales'),
      ),
      body: ListView(children: _crearItemsCorta()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = [];

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)
           ..add(Divider(color: Colors.amberAccent[700]));

      // lista.add(tempWidget);
      // lista.add(Divider(
      //   color: Colors.amberAccent[700],
      // ));
    }

    return lista;
  }

  List<Widget> _crearItemsCorta() {

    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text('$item !'),
            subtitle: Text('Holiwis'),
            leading: Icon(Icons.arrow_circle_down),
            trailing: Icon(Icons.arrow_forward_outlined),
            onTap: () {
              
            },
          ),
          Divider()
        ],
      );
    }).toList();

  }

}
