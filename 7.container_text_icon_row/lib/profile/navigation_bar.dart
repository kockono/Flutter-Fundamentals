import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {



    final bookMark = Container(
        margin: EdgeInsets.only(
          top: 20.0,
          left: 24.0,
          right: 35.0,
        ),

        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 20.0,
          child: Icon(
              Icons.bookmark_border
            ),
        ),
    );
    
    final gift = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        right: 35.0
      ),

      child: CircleAvatar(
        backgroundColor: Colors.white60,
        radius: 20.0,
        child: Icon(
          Icons.card_giftcard_sharp
        ),
      ),
    );

    final plus = Container(
      margin: EdgeInsets.only(
        top: 10.0,
        right: 35.0
      ),

      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 30.0,
        child: Icon(
          Icons.add,
          size: 40.0,
        ),
      ),
    );

    final message = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        right: 35.0
      ),
      child: CircleAvatar(
        backgroundColor: Colors.white60,
        radius: 20.0,
        child: Icon(
          Icons.local_post_office_outlined
        ),
      ),
    );

    final miniAvatar = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 5.0
      ),
      child: CircleAvatar(
        backgroundColor: Colors.white60,
        radius: 20.0,
        child: Icon(
          Icons.person
        ),
      ),
    );

    final navBar = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        bookMark,
        gift,
        plus,
        message,
        miniAvatar
        
      ],
    );

    return navBar;


  }
}