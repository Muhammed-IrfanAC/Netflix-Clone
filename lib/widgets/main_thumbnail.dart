import 'package:flutter/material.dart';
import 'package:netflix_clone/api/constants.dart';

class MainThumbnail extends StatelessWidget {
  const MainThumbnail({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(15)),
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height - 400,
        margin: const EdgeInsets.only(top: 10),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(Constants.imagePath+image,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height - 400,
                  fit: BoxFit.fill),
            ),
            Positioned(
                top: MediaQuery
                    .of(context)
                    .size
                    .height - 460,
                left: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 165,
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
                    const SizedBox(width: 10),
                    SizedBox(
                      width: 165,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(),
                              backgroundColor: Colors.grey.shade900),
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                size: 30,
                                color: Colors.white,
                              ),
                              Text(
                                'My List',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          )),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
