import 'dart:convert';

void main() {
  
  //final wolderine = new Heroe('Logan', 'Regeneracion');
  final rawJson = '{ "nombre":"Logan", "poder": "Regenracion" }';
  
  Map parseJson = json.decode( rawJson);
  
  final wolderine = new Heroe.fromJson( parseJson );
    
  print(wolderine.nombre);
  print(wolderine.poder);

}

class Heroe {
  
  String nombre = '';
  String poder = '';
  
  Heroe(this.nombre, this.poder);
  
  Heroe.fromJson( parsedJson ) {
    nombre = parsedJson['nombre'];
    poder = parsedJson['poder'];
    
    
  }
  
}