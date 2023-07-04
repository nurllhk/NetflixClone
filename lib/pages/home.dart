import 'package:flutter/material.dart';
import 'package:netflix/class/default_key.dart';
import 'package:netflix/class/image.dart';
import 'package:netflix/class/palet.dart';

import '../widget/movie_card.dart';
import '../widget/movie_horizontal.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MovieCard(
                  imagename: DefaultImage.image17,
                ),
                MovieHorizontel(
                    title: DefaultKey.title1,
                    image1: DefaultImage.image3,
                    image2: DefaultImage.image1,
                    image3: DefaultImage.image4,
                    image4: DefaultImage.image7,
                    image5: DefaultImage.image9),
                MovieHorizontel(
                    title: DefaultKey.title2,
                    image1: DefaultImage.image2,
                    image2: DefaultImage.image6,
                    image3: DefaultImage.image10,
                    image4: DefaultImage.image12,
                    image5: DefaultImage.image20),
                MovieHorizontel(
                    title: DefaultKey.title3,
                    image1: DefaultImage.image19,
                    image2: DefaultImage.image13,
                    image3: DefaultImage.image14,
                    image4: DefaultImage.image15,
                    image5: DefaultImage.image18),
              ],
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: Palet.gradiants)),
              width: MediaQuery.of(context).size.width,
              child: SafeArea(
                child: Padding(
                  padding: Palet.pagePadding,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                            image: const AssetImage(DefaultImage.logo),
                            fit: BoxFit.contain,
                            height: MediaQuery.of(context).size.height / 22,
                          ),
                          const Row(
                            children: [Icon(Icons.person)],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            DefaultKey.headline1,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            DefaultKey.headline2,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            DefaultKey.headline3,
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
