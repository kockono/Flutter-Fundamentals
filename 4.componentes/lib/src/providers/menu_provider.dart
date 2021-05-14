import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle; // Async json

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    // cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    final respuesta = await rootBundle.loadString('data/menu_opts.json');

    Map dataMap = json.decode(respuesta);
    opciones = dataMap['rutas'];

    return opciones;
    // Map dataMap2 = jsonDecode(data);
    // print(dataMap2);
  }
}

final menuProvider = new _MenuProvider();
