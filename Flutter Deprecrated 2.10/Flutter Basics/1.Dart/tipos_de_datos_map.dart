void main () {

  Map<String, dynamic> persona = {
    'nombre': 'Carlos',
    'edad': 32,
    'soltero': true
  };
  
  print(persona['nombre']);
  
  Map<int, String> personas = {
    1: 'FT',
    2: 'Peter'
  };
  
  personas.addAll( { 4:'Banne'} );
  
  print(personas);
  print(personas[2]);
  
}
