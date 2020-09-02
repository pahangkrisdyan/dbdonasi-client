import 'package:flutter/material.dart';

class HomeTopImage extends StatelessWidget {
  final double height;

  HomeTopImage({this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(4.0),
          bottomRight: Radius.circular(4.0),
        ),
        color: Colors.blue,
        image: DecorationImage(
          fit: BoxFit.cover,
          alignment: Alignment.center,
          image: NetworkImage(
            'https://api.databasedonasi.id/photo-front-banner.jpg',
          ),
        ),
      ),
    );
  }
}
