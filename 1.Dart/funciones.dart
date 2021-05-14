void main() {
  
  String mensaje = saludar(texto: 'Hola', nombre: 10);
  print(mensaje);
  
  mensaje = saludarFlecha(texto: 'Hola', nombre: 18);
  print(mensaje);
}


String saludar({String texto, int nombre}) {
  
  return '$texto $nombre';
}

String saludarFlecha({String texto, int nombre}) => '$texto $nombre';
  

