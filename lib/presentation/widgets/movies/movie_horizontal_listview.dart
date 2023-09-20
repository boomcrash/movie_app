import 'package:flutter/material.dart';
import 'package:movie_app/domain/entities/movie.dart';

class MovieHorizontalListView extends StatelessWidget {
  final List<Movie> movies;
  final String? title;
  final String? subtitle;

  const MovieHorizontalListView(
      {super.key, required this.movies, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
