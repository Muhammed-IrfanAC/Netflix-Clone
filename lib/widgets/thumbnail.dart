import 'package:flutter/material.dart';
import 'package:netflix_clone/api/constants.dart';

class MovieThumbnail extends StatelessWidget {
  MovieThumbnail({super.key, required this.image});
  String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 128,
      child: Image.network(Constants.imagePath+image, fit: BoxFit.fill),
    );
  }
}
