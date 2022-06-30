import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260,
      // color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Text('Populares', style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold)),
          ),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: ( _, int index) => _MoviePoster(),
            ),
          )
        ],
      ),
    );
  }
}

class _MoviePoster extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
            width: 130,
            height: 100,
            // color: Colors.green,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child:  Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: const FadeInImage(
                    placeholder: AssetImage('assets/no-image.jpg'),
                    image: NetworkImage('https://via.placeholder.com/300x400')
                            ),
                ),
            

             const Padding(
               padding: EdgeInsets.all(4.0),
               child: Text(
                  'Stawrwr efewefwefwfeq qweqweewqew',
                  style: TextStyle(fontSize: 8.5),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,

                ),
             )
              ],
              
            ),
    );
  }
}