void main () {
  List<int> numeros = [1,2,3,4];

  print(numeros);
  
  numeros.add(10);
  print(numeros);

  //Tamaño fijo
  List masNumeros = new List(5);
  // masNumero.add(1); Esto no es correcto
  masNumeros[0] = 1;
  print(masNumeros);
  
}