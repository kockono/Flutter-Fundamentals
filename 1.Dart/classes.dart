// void main() {

//   final wolverine = new Heroe( nombre:'Logan', poder:'Regeneración');

//   print( wolverine);

// }

// class Heroe {

//   String nombre = '';
//   String poder = '';

//   Heroe({ String nombre = 'Anonimo', String poder = '' }){

//     this.nombre = nombre;
//     this.poder = poder;

//   }

//   String toString() {
//     return '${ this.nombre } - ${ this.poder }';
//   }

// }

//! Manera Corta

void main() {
  final wolverine = new Heroe(nombre: 'Logan', poder: 'Regeneración');

  print(wolverine);
}

class Heroe {
  String nombre;
  String poder;

  Heroe({this.nombre = '', this.poder = ''});

  String toString() => '$nombre - $poder';
}
