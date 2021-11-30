// Modulos de Flutter
// import 'package:componentes/src/pages/list_view_builder.dart';
import 'package:flutter/material.dart';

// Pages
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/cards_page.dart';
import 'package:componentes/src/pages/animated_container.dart';
import 'package:componentes/src/pages/slider_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() { // Regresa un mapa de rutas la regresa en el metodo routes:

  return <String, WidgetBuilder> {
    '/'                  : (BuildContext context) => HomePage(),
    'avatar'             : (BuildContext context) => AvatarPage(), // Otra manera de escribir la ruta
    'alert'              : (BuildContext context) => AlertPage(),
    'card'               : (BuildContext context) => CardsPage(),
    'animated'           : (BuildContext context) => AnimatedContainerP(),
    'slider'             : (BuildContext context) => SliderPage(),
    // 'list'               : (BuildContext context) => ListViewBuilderPage(),

  };
}


