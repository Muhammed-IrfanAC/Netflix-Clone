import 'package:flutter/material.dart';

import '../api/constants.dart';

class DetailsPage extends StatelessWidget {
  final String image;
  final String title;
  final DateTime releaseDate;
  final double rating;
  final String overview;

  const DetailsPage(
      {super.key,
      required this.image,
      required this.title,
      required this.releaseDate,
      required this.rating,
      required this.overview});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(Constants.imagePath+image, width: double.infinity, height: MediaQuery.of(context).size.height-400, fit: BoxFit.fill),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          title,
                          style: const TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold), maxLines: 2, overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text((releaseDate).toString().substring(0,10)),
                      Spacer(),
                      Row(
                        children: [
                          const Icon(Icons.star),
                          Text((rating).toString()),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(),
                            backgroundColor: Colors.white),
                        onPressed: () {},
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.play_arrow_sharp,
                              size: 30,
                              color: Colors.black,
                            ),
                            Text(
                              'Play',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )
                          ],
                        )),
                  ),
                  Text(overview)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
