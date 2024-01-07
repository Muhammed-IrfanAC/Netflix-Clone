import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:netflix_clone/api/constants.dart';
import 'package:netflix_clone/models/movielist_model.dart';

var headers={"Authorization":"Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxM2I1Yzc5YmIwZWY2YTQwNDIyNmVlMjE1NTU4YzVmNiIsInN1YiI6IjY1OTdkOTZmNzI2ZmIxMTY0YWFiMjg3NyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.JSDp1JYDNz1h_wP5953V6bcYdJ0mdAMHaqNghSNBeUk",
"accept":"application/json"};

class TmdbApi {
  Future<List<MovieListModel>> fetchMovies(String category) async {
    final url= Uri.parse('${Constants.baseUrl}$category${Constants.apiKey}');
    final response = await http.get(url);
    if(response.statusCode == 200){
      final movieData = jsonDecode(response.body);
      List<dynamic> results = movieData['results'];
      return results.map((json) => MovieListModel.fromJson(json)).toList();
    }else{
      throw Exception('Failed to load movies');
    }
  }

  Future<void> fetchAll() async{

  }
}
