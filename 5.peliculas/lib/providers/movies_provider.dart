import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MoviesProvider extends ChangeNotifier {
  // https://api.themoviedb.org/3/movie/520763?api_key=c6c5257605a8f915e2e79d03c0512fdb&language=en-ES
  String _apiKey = 'c6c5257605a8f915e2e79d03c0512fdb';
  String _baseUrl = 'https://api.themoviedb.org';
  String _language = 'es-Es';

  MoviesProvider() {
    print('Movies Provider Inicializado');
    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(this._baseUrl, '3/movie/now_playing', {
      '_apiKey': 'c6c5257605a8f915e2e79d03c0512fdb',
      '_baseUrl': '{http}',
      'language': '{http}'
    });
    var responese = await http.get(url);
    print('getPeliculas');
  }
}
