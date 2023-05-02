void main() {
  print('Hola mundo');

  String nombre = "Janett";
  int numero = 21;
  double pi = 3.1415;

  print('Hola $nombre $numero');
  print('$pi');

  print(nombre);
  print(nombre[0]);
  print(nombre[nombre.length - 3]);
}

class Boleanos {
  bool activado = true;

  boleanos() {
    print(activado);

    if (activado) {
      print('El motor esta funcionando');
    } else {
      print('Esta apagado');
    }
  }
}
