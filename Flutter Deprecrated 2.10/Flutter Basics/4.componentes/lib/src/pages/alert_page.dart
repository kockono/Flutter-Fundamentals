import 'package:flutter/material.dart';


class AlertPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Alert Page'),
            
          ),
          body: Center(
            child: ElevatedButton(
              child: Text('Mostrar alerta'),
              onPressed: () => _mostrarAlert(context),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: StadiumBorder()
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton( // Si es nullo no funciona
            child: Icon(Icons.add_location),
            onPressed: () => Navigator.pop(context) // Popea la ruta anterior
          ),
          
    );
  }
      void _mostrarAlert(BuildContext contextDeLaAPP) {

        showDialog(
          context: contextDeLaAPP,
          barrierDismissible: false, // False no permite que salgas de la alerta
          builder: (context) { // Que se va mostrar

              return AlertDialog(
                shape:RoundedRectangleBorder( borderRadius: BorderRadius.circular(15.0) ),
                title: Text('Contenido'),
                content: Column(
                  mainAxisSize: MainAxisSize.min, // Adaptate el contenido interno, ejemp: texto
                  children: <Widget>[
                    Text('Este contenido es lo mejor eres fenomenal chris lo vas a lograr si o si'),
                    FlutterLogo(size: 100.0),
                    // Icon(Icons.add_alert) // Icono
                  ],
                ),
                actions: <Widget>[
                  TextButton(
                    child: Text('Cancelar'),
                    onPressed: () => Navigator.of(context).pop(), // Se puiede poner nullo
                 // onPressed: () => Navigator.pop(context), // Ambas son utiles
                    
                  ),
                  TextButton(
                    child: Text('Ok'),
                    onPressed: (){ 
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
          }
        );

    }
}