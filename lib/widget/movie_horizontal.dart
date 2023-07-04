import 'package:flutter/material.dart';
import 'package:netflix/class/palet.dart';
import 'movie_list.dart';

class MovieHorizontel extends StatelessWidget {
  const MovieHorizontel({
    super.key,
    required this.title,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.image4,
    required this.image5,
  });

  final String title;
  final String image1;
  final String image2;
  final String image3;
  final String image4;
  final String image5;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: Palet.pagePadding,
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              MovieList(
                image: image1,
              ),
              MovieList(
                image: image2,
              ),
              MovieList(
                image: image3,
              ),
              MovieList(
                image: image4,
              ),
              MovieList(
                image: image5,
              ),
            ],
          ),
        )
      ],
    );
  }
}
