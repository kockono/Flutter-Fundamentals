void main() {
  
  print('Estamos a punto de pedir datos');
  
  
  httpGet('https://api.nada.com/aliens').then( (data) {
      print( data );
  });
  
  print('Ultima linea');
}



Future<String> httpGet(url) {
  return Future.delayed( new Duration(seconds :5), () {
    return 'Hola';
  });
 
}
                      
