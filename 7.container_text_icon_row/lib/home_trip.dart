import 'package:container_text_icon_row/review_list.dart';
import 'package:flutter/material.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {

  String descriptionPlace="Lorem, ipsum dolor sit amet consectetur adipisicing elit. Accusamus dolore molestias commodi facere porro autem, voluptatem assumenda deleniti quasi inventore, odio perspiciatis, non voluptas qui? Recusandae non possimus nemo facilis!";


  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          ListView(
            children: [
              DescriptionPlace("Duwili Ella","$descriptionPlace"),
              ReviewList()
            ],
          ),
          HeaderAppBar()
        ],
      );
  }
}