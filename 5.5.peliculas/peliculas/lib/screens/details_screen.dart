import 'package:flutter/material.dart';
class DetailsScreen extends StatelessWidget {

  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final String movie = ModalRoute.of(context)?.settings.arguments.toString() ?? 'No-movie';

    return Scaffold(
      body: CustomScrollView(
        slivers: [ // Son widget que tienen comportamiento preprogramado cuando movemos el padre
            _CustomAppBar()
        ],
       ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  SliverAppBar (
        backgroundColor: Colors.indigo,
        expandedHeight: 200,
        pinned: true, // Que se siga mirando la AppBar
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: Container(
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            child: Text('Movie.title', style: TextStyle(fontSize: 16),),
          ),
          background: FadeInImage(
           placeholder: AssetImage('assets/loading.gif'),
           image: NetworkImage('https://via.placeholder.com/500x300'),
           fit: BoxFit.cover,
           ),
          ),
        );
  }
}