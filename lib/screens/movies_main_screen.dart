import 'package:flutter/material.dart';

class MovieListScreen extends StatelessWidget {
  const MovieListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Row(
              children: [
                Image.asset(
                  'lib/assets/images/logon.png', width: 50,
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: const Icon(Icons.search))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                      onPressed: () {},
                      child: const Text('TV Shows',
                          style: TextStyle(
                              fontSize: 16, color: Colors.white60))),
                  OutlinedButton(
                      onPressed: () {},
                      child: const Text('Movies',
                          style: TextStyle(
                              fontSize: 16, color: Colors.white60))),
                  OutlinedButton(
                      onPressed: () {},
                      child: const Text('Categories >',
                          style: TextStyle(
                              fontSize: 16, color: Colors.white60)))
                ],
              ),
            ),
            Padding(
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
                    Image.asset('lib/assets/images/avatar1.png',
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height - 400,
                        fit: BoxFit.fill),
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
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Popular on Netflix',
                      style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 120,
                        color: Colors.blue,
                        child: Text('Box no $index'),
                      ),
                    );
                  },
                  itemCount: 8,
                  scrollDirection: Axis.horizontal),
            ),const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Trending Now',
                      style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 120,
                        color: Colors.purple,
                        child: Text('Box no $index'),
                      ),
                    );
                  },
                  itemCount: 8,
                  scrollDirection: Axis.horizontal),
            ),const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('TV Comedies',
                      style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 120,
                        color: Colors.white38,
                        child: Text('Box no $index'),
                      ),
                    );
                  },
                  itemCount: 8,
                  scrollDirection: Axis.horizontal),
            ),
          ],
        ),
      ),
    );
  }
}
