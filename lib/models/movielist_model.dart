// To parse this JSON data, do
//
//     final popularMovie = popularMovieFromJson(jsonString);

import 'dart:convert';

class MovieListModel {
  String backdropPath;
  int id;
  String originalLanguage;
  String originalTitle;
  String overview;
  String posterPath;
  DateTime releaseDate;
  String title;
  double voteAverage;

  MovieListModel({
    required this.backdropPath,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.voteAverage,
  });

  factory MovieListModel.fromJson(Map<String, dynamic> json) => MovieListModel(
    backdropPath: json["backdrop_path"],
    id: json["id"] as int,
    originalLanguage: json["original_language"],
    originalTitle: json["original_title"],
    overview: json["overview"],
    posterPath: json["poster_path"],
    releaseDate: DateTime.parse(json["release_date"]),
    title: json["title"],
    voteAverage: json["vote_average"]?.toDouble(),
  );
}
