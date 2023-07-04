import 'package:flutter/material.dart';
import 'package:netflix/class/default_key.dart';
import 'package:netflix/class/palet.dart';

class MovieCard extends StatelessWidget {
  final String imagename;

  const MovieCard({
    super.key,
    required this.imagename,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .6,
      child: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            child: Image(
              image: AssetImage(imagename),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black.withOpacity(0), Colors.black],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: Palet.pagePadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.add), Text(DefaultKey.list)],
                  ),
                  Container(
                    padding: Palet.cardPadding,
                    decoration: BoxDecoration(
                        borderRadius: Palet.cardBorder,
                        color: Colors.white),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.play_arrow_sharp,
                          color: Palet.iconColor,
                        ),
                        Text(
                          DefaultKey.play,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: Palet.iconColor),
                        ),
                      ],
                    ),
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Icon(Icons.info), Text(DefaultKey.info)],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
