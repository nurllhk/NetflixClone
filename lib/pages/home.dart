import 'package:flutter/material.dart';
import 'package:netflix/class/image.dart';

import '../widget/movie_card.dart';
import '../widget/movie_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MovieCard(
              imagename: DefaultImage.image17,
            ),
            MovieHorizontel(),
            MovieHorizontel(),
            MovieHorizontel(),
          ],
        ),
      ),
    );
  }
}

class MovieHorizontel extends StatelessWidget {
  const MovieHorizontel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            "Popular Movies",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              MovieList(
                image: DefaultImage.image3,
              ),
              MovieList(
                image: DefaultImage.image4,
              ),
              MovieList(
                image: DefaultImage.image5,
              ),
              MovieList(
                image: DefaultImage.image6,
              ),
              MovieList(
                image: DefaultImage.image7,
              ),
            ],
          ),
        )
      ],
    );
  }
}
