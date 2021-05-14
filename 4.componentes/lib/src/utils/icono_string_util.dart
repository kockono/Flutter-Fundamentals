import 'package:flutter/material.dart';


//<Sumary>
//Aquí podemos ver que es un diccionario de iconos en realidad un mapa, en el cual
//Si la palabra del json coincide con el nombre del mapa de iconos terminaras seleccionando el icono
//en cuestion
//</Sumary>

final _icons = <String, IconData> {
  'add_alert'     : Icons.add_alert,
  'accessibility' : Icons.accessibility,
  'folder_open'   : Icons.folder_open,
  'donut_large'   : Icons.donut_large,
  'input'         : Icons.input,
  'tune'          : Icons.tune,
  'list'          : Icons.list,

};

Icon getIcon(String nombreIcono) {
  return Icon(_icons[nombreIcono], color: Colors.blue );
}
