import 'dart:convert';

// Aquí importamos el supuesto modelo que creamos
import 'package:peliculas/src/models/pelicula_model.dart';

// Importamos la libreria http para peticiones http o backend
import 'package:http/http.dart' as http;

class PeliculasProvider {

  // La apikey, el utr y el lenguaje de la api moviedb.
  String _apiKey   = 'c6c5257605a8f915e2e79d03c0512fdb';
  String _url     = 'api.themoviedb.org';
  String _language = 'es-ES';

  // Proceso asyncrono, pa no batallar
  Future <List<Pelicula>> _procesarRespuesta(Uri url) async {

    // Esperamos la respuesta o promesa
    final resp = await http.get(url); 
    // Decodificamos el Json
    final decodedData = json.decode(resp.body); 
    final populares = new Peliculas.fromJsonList(decodedData['results']); //

    // Retornamos los resultados mas populares
    return populares.items; 
  }


  Future<List<Pelicula>> getEnCines() async {

    // El metodo ya incluye el https
    final url = Uri.https(_url, '3/movie/now_playing', {
      'api_key'  : _apiKey,
      'language' : _language
    });

    return await _procesarRespuesta(url);

  }

  Future<List<Pelicula>> getPopulares() async {
    // Trae las pelis mas populares
    final url = Uri.https(_url, '3/movie/popular', {
      'api_key'  : _apiKey,
      'language' : _language

    });
    // Retorna la respuesta
    return await _procesarRespuesta(url);

  }



}