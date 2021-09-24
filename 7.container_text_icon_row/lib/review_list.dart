import 'package:flutter/material.dart';

import 'package:container_text_icon_row/review.dart';

class ReviewList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
     return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review("assets/img/people.jpg","Cerdito","1 review 5 photos","Es hermoso"),
        Review("assets/img/people.jpg","Marranito","2 review 5 photos","Es lindo"),
        Review("assets/img/people.jpg","Puerquito","4 review 5 photos","Es limpio")
      ],         
     );
    
  }
}