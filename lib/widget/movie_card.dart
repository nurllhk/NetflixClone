import 'package:flutter/material.dart';


class MovieCard extends StatelessWidget {
  final String imagename;
  const MovieCard({

    super.key, required this.imagename,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .6, // ekranın %60 ı
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
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.add), Text('My List')],
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Icon(Icons.play_arrow_sharp,color: Colors.black,),
                        Text(
                          'Play',
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black),
                        ), ],
                    ),
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Icon(Icons.info), Text('İnfo')],
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