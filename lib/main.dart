import 'dart:ffi';

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

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
  var movies;

  static dynamic getJson() async {
    const apiEndPoint =
        "http://api.themoviedb.org/3/discover/movie?api_key=${apiKey}&sort_by=popularity.desc";

    final apiResponse = await http.get(apiEndPoint);
    return apiResponse;
  }

  fectchMovies() async {
    var data = await getJson();

    setState(() {
      movies = data;
    });
  }

  @override
  build(BuildContext context) {
    fectchMovies();
    return Scaffold(
      body: SingleChildScrollView(
        child: movies != null
          ? Text("Response \n $movies")
          : Text("Loading API response"),
      )
    );
  }
}
