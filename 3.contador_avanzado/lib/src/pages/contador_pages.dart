import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 30);
  int _conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Titulo'),
          centerTitle: true,
          elevation: 2.5,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Numero De Clicks', style: _estiloTexto),
              Text('Numero', style: _estiloTexto),
              Text('$_conteo', style: TextStyle(fontSize: 25.0)),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.remove), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.remove), label: "Home2")
          ])
        );     
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        // floatingActionButton: _crearBotones());

  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 30.0),
        FloatingActionButton(onPressed: _reset, child: Icon(Icons.replay_outlined)),
        Expanded(child: SizedBox()),
        FloatingActionButton(onPressed: _remove, child: Icon(Icons.remove)),
        SizedBox(width: 20.0),
        FloatingActionButton(onPressed: _add, child: Icon(Icons.add)),
        SizedBox(width: 20.0),
      ],
    );
  }

  void _remove() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }

  void _add() {
    setState(() => _conteo++);
  }
}
