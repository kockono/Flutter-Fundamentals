void main() {
  
  final superman = new Heroe();
  final lexLuthor = new Villano();
  
  superman.nombre = 'Clark Kent';
  lexLuthor.nombre ='Lex Luthor';
  
  
  
}

abstract class Personaje { //De esta manera no podra crear instancias de personaje
  String poder = '';
  String nombre = '';
}

class Heroe extends Personaje {
  
  int valentia = 0;
  
}


class Villano extends Personaje {
  int maldad = 0;
  
}