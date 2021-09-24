import 'package:container_text_icon_row/card_image_list.dart';
import 'package:flutter/material.dart';
import 'gradient_back.dart';

class HeaderAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack("Bienvenido"),
        CardImageList(),
      ],
    );
  }
}