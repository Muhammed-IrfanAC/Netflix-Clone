import 'dart:math';
import 'package:flutter/material.dart';
import 'package:netflix_clone/models/movielist_model.dart';
import 'package:netflix_clone/screens/details_page.dart';
import 'package:netflix_clone/widgets/main_thumbnail.dart';
import 'package:netflix_clone/widgets/skeleton_loading.dart';
import 'package:netflix_clone/widgets/thumbnail.dart';

import '../api/constants.dart';
import '../api/tmdb_api.dart';

class MovieListScreen extends StatefulWidget {
  const MovieListScreen({super.key});

  @override
  State<MovieListScreen> createState() => _MovieListScreenState();
}

class _MovieListScreenState extends State<MovieListScreen> {
  List<MovieListModel> popularMovies = [];
  List<MovieListModel> trendingMovies = [];
  List<MovieListModel> upcomingMovies = [];
  List<MovieListModel> nowPlayingMovies = [];
  bool _isMovieLoaded = false;
  late int randomIndex;

  loadmovies() async {
    popularMovies = await TmdbApi().fetchMovies(Constants.popularMovies);
    trendingMovies = await TmdbApi().fetchMovies(Constants.trendingMovies);
    upcomingMovies = await TmdbApi().fetchMovies(Constants.upcomingMovies);
    nowPlayingMovies = await TmdbApi().fetchMovies(Constants.nowPlayingMovies);
    Random random = Random();
    randomIndex = random.nextInt(nowPlayingMovies.length);
    setState(() {
      _isMovieLoaded = true;
    });
  }

  @override
  void initState() {
    super.initState();
    loadmovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Row(
              children: [
                Image.asset(
                  'lib/assets/images/logon.png',
                  width: 50,
                ),
                const Spacer(),
                IconButton(onPressed: () {}, icon: const Icon(Icons.search, size: 35,))
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
                          style:
                              TextStyle(fontSize: 16, color: Colors.white60))),
                  OutlinedButton(
                      onPressed: () {},
                      child: const Text('Movies',
                          style:
                              TextStyle(fontSize: 16, color: Colors.white60))),
                  OutlinedButton(
                      onPressed: () {},
                      child: const Text('Categories >',
                          style:
                              TextStyle(fontSize: 16, color: Colors.white60)))
                ],
              ),
            ),
            _isMovieLoaded
                ? InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsPage(
                              image: nowPlayingMovies[randomIndex].posterPath,
                              title: nowPlayingMovies[randomIndex].title,
                              releaseDate:
                              nowPlayingMovies[randomIndex].releaseDate,
                              rating: nowPlayingMovies[randomIndex].voteAverage,
                              overview:
                              nowPlayingMovies[randomIndex].overview)));
                },
                child: MainThumbnail(image: nowPlayingMovies[randomIndex].posterPath))
                : Padding(
                    padding: const EdgeInsets.all(15),
                    child: SkeletonLoad(
                      width: MediaQuery.of(context).size.width - 25,
                      height: MediaQuery.of(context).size.height - 350,
                    ),
                  ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Popular on Netflix',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsPage(
                                      image: popularMovies[index].posterPath,
                                      title: popularMovies[index].title,
                                      releaseDate:
                                          popularMovies[index].releaseDate,
                                      rating: popularMovies[index].voteAverage,
                                      overview:
                                          popularMovies[index].overview)));
                        },
                        child: MovieThumbnail(
                            image: popularMovies[index].posterPath),
                      ),
                    );
                  },
                  itemCount: popularMovies.length,
                  scrollDirection: Axis.horizontal),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Trending Now',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsPage(
                                        image: trendingMovies[index].posterPath,
                                        title: trendingMovies[index].title,
                                        releaseDate:
                                        trendingMovies[index].releaseDate,
                                        rating: trendingMovies[index].voteAverage,
                                        overview:
                                        trendingMovies[index].overview)));
                          },
                          child: MovieThumbnail(
                              image: trendingMovies[index].posterPath),
                        ));
                  },
                  itemCount: trendingMovies.length,
                  scrollDirection: Axis.horizontal),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Upcoming Movies',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsPage(
                                        image: upcomingMovies[index].posterPath,
                                        title: upcomingMovies[index].title,
                                        releaseDate:
                                        upcomingMovies[index].releaseDate,
                                        rating: upcomingMovies[index].voteAverage,
                                        overview:
                                        upcomingMovies[index].overview)));
                          },
                          child: MovieThumbnail(
                              image: upcomingMovies[index].posterPath),
                        ));
                  },
                  itemCount: upcomingMovies.length,
                  scrollDirection: Axis.horizontal),
            ),
          ],
        ),
      ),
    );
  }
}
