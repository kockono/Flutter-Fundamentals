import 'package:flutter/material.dart';
import 'package:peliculas/providers/movies_provider.dart';

// Providers
import 'package:provider/provider.dart';

// Screens
import 'screens/screens.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // Solo inicializa el proyecto cuando sea necesario, con lazy eso puede cambiar
      providers: [
        ChangeNotifierProvider(
          create: (_) => MoviesProvider(),
          lazy: false,
        )
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      initialRoute: 'home',
      routes: {
        'home': (_) => HomeScreen(),
        'details': (_) => DetailsScreen(),
      },
      // theme: ThemeData.light().copyWith(),
      theme: ThemeData.dark()
          .copyWith(appBarTheme: const AppBarTheme(color: Colors.red)),
    );
  }
}
