import 'package:flutter/material.dart';

class MoviesProvider extends ChangeNotifier {
  MoviesProvider() {
    print('Movies Provider Inicializado');

    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    print('getPeliculas');
  }
}
