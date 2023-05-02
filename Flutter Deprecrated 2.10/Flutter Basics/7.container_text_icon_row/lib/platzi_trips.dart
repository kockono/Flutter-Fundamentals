import 'package:container_text_icon_row/home_trip.dart';
import 'package:container_text_icon_row/profile_trips.dart';
import 'package:container_text_icon_row/search_trips.dart';
import 'package:flutter/material.dart';

class PlatziTrips extends StatefulWidget {

  @override
  _PlatziTripsState createState() => _PlatziTripsState();
}

class _PlatziTripsState extends State<PlatziTrips> {

    int indexTap = 0;

    final List<Widget> widgetsChildren = [
      HomeTrips(),
      SearchTrips(),
      ProfileTrips(),
    ];

    onTapTapped(int index) { // Numero de las taps
        setState(() {
          indexTap = index;
        });
    }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
        body: widgetsChildren[indexTap],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple // Colores de los iconos
          ),
          child: BottomNavigationBar(
            onTap: onTapTapped, // Que hara cuando le haga click
            currentIndex: indexTap, // Es el index que esta en ese momento como si le hiciera click al iniciar la app
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "",
              ),
            ],
          ),
        ),
    );
  }
}