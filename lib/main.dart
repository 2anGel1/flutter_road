// import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MovieApp());
}

enum APP_THEME { LIGHT, DARK }

const apiKey = "bb4fa923017c43d0012f0a5bf0b794bc";

class MovieApp extends StatelessWidget {
  @override
  build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MovieListing());
  }
}

class MovieListing extends StatefulWidget {
  @override
  State<MovieListing> createState() => _MovieListingState();
}

class _MovieListingState extends State<MovieListing> {
  List<MovieModel> movies = <MovieModel>[];
  int counter = 0;

  fetchMovies() async {
    var data = await MoviesProvider.getJson();

    setState(() {
      List<dynamic> results = data['results'];
      counter++;
      results.forEach((element) {
        movies.add(MovieModel.fromJson(element));
      });
    });
  }

  @override
  void initState() {
    super.initState();
    fetchMovies();
  }

  @override
  build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              MovieTile(movies[index]),
              Text("Counter: $counter")
            ],
          );
        },
      ),
    );
  }
}

class MoviesProvider {
  static const imagePathPrefix = 'https://image.tmdb.org/t/p/w500/';

  static Future<Map> getJson() async {
    const apiEndPoint =
        "http://api.themoviedb.org/3/discover/movie?api_key=${apiKey}&sort_by=popularity.desc";

    final apiResponse = await http.get(apiEndPoint);

    return json.decode(apiResponse.body);
  }
}

class MovieModel {
  //Class fields for mapping to JSON properties
  final int id;
  final num popularity;
  final int vote_count;
  final bool video;
  final String poster_path;
  final String backdrop_path;
  final bool adult;
  final String original_language;
  final String original_title;
  final List<dynamic> genre_ids;
  final String title;
  final num vote_average;
  final String overview;
  final String release_date;

  //Takes JSON formatted map, and returns `MovieModel` object.
  MovieModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        popularity = json['popularity'],
        vote_count = json['vote_count'],
        video = json['video'],
        poster_path = json['poster_path'],
        adult = json['adult'],
        original_language = json['original_language'],
        original_title = json['original_title'],
        genre_ids = json['genre_ids'],
        title = json['title'],
        vote_average = json['vote_average'],
        overview = json['overview'],
        release_date = json['release_date'],
        backdrop_path = json['backdrop_path'];
}

class MovieTile extends StatelessWidget {
  final MovieModel movie;

  const MovieTile(this.movie);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            movie.poster_path != null
                ? Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.black,
                        image: DecorationImage(
                            image: NetworkImage(MoviesProvider.imagePathPrefix +
                                movie.poster_path),
                            fit: BoxFit.cover),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 3.0,
                              offset: Offset(1.0, 1.0))
                        ]),
                  )
                : Container(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                movie.title,
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                movie.overview,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
            Divider(color: Colors.grey.shade500),
          ],
        ));
  }
}
