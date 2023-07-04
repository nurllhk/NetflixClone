import 'package:flutter/material.dart';
import 'package:netflix/class/palet.dart';


class MovieList extends StatelessWidget {
  const MovieList({
    required this.image,
    super.key,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        height: MediaQuery.of(context).size.height / 4,
        decoration: BoxDecoration(borderRadius: Palet.cardBorder),
        clipBehavior: Clip.antiAlias,
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}