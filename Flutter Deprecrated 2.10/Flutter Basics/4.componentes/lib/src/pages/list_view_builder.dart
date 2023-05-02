import 'package:flutter/material.dart';

import 'dart:async';

class ListViewBuilderPage extends StatefulWidget {

  @override
  _ListViewBuilderPageState createState() => _ListViewBuilderPageState();
}

class _ListViewBuilderPageState extends State<ListViewBuilderPage> {

  List<int> _listaNumeros = [];
  int _ultimoItem = 0;
  bool _isLoading = false;

  ScrollController _scrollController = new ScrollController(); // Controlar el scoll a tu voluntad

  @override
  void initState() { // En el ciclo del programa
    super.initState(); // Hace referencia a la clase state
    _agregar10();

    _scrollController.addListener(() {
                                              // El largo maximo del scroll
      if(_scrollController.position.pixels  == _scrollController.position.maxScrollExtent) {
        _fetchData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: Stack(
        children: <Widget> [
          _crearLista(),
          _crearLoading()
        ],
      ),
    );
  }

void dispose() {
  super.dispose();
  _scrollController.dispose();
}

  Widget _crearLista() {


    return RefreshIndicator(
          onRefresh: obtenerPagina1, // Necesita un feature para que no se cicle

          child: ListView.builder(
          controller: _scrollController,   // Controlar el scroller
          itemCount: _listaNumeros.length, // El numero de elementos que habra
          itemBuilder: (BuildContext context, int index) { // El context se crea ahí no viene como argumento
      
          final imagen = _listaNumeros[index];

            return FadeInImage(
              image: NetworkImage('https://picsum.photos/500/600?random=$imagen'),
              placeholder: AssetImage('assets/jar-loading.gif'),
              );
          },

        ),
    );

  }

  Future<Null> obtenerPagina1() async{
    final duration = new Duration(seconds: 2);
    new Timer(duration, () {
      _listaNumeros.clear(); // Borra todo el contenido
      _ultimoItem++; // Inicializa
      _agregar10(); // Agrega los nuevos
    });

    return Future.delayed(duration);

  }

  void _agregar10() {

     for (var i = 1; i < 10; i++) {
       _ultimoItem++;
       _listaNumeros.add(_ultimoItem);
       
     }
     setState(() {}); // Reinscribir 
  }

  Future  _fetchData() async {

    _isLoading = true;
    setState(() {});

    final duration = new Duration( seconds: 2 ); // Va durar 2 segundos
  
    return new Timer(duration, respuestaHTTP);

  }

  void respuestaHTTP() {
    _isLoading = false;
    _agregar10();

    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      curve: Curves.fastLinearToSlowEaseIn,
      duration: Duration(milliseconds: 250),
    );

  }

  Widget _crearLoading() {

    if ( _isLoading ) {
      return Column (
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row( // Dentro de la fila
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                CircularProgressIndicator()
            ],
          ),
          SizedBox(height: 15.0,)
        ],
      );
    } else {
      return Container();
    }
    
  }

}