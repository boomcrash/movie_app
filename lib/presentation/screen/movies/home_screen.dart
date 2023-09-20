// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/config/constants/environment.dart';
import 'package:movie_app/presentation/providers/movies/movies_providers.dart';
import 'package:movie_app/presentation/providers/providers.dart';
import 'package:movie_app/presentation/widgets/movies/movies_slideshow.dart';
import 'package:movie_app/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const name = 'home-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _HomeView(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final slideShowProvider = ref.watch(moviesSlideShowProvider);

    if (slideShowProvider.length == 0) return CircularProgressIndicator();

    /*return ListView.builder(
      itemCount: nowPlayingMovies.length,
      itemBuilder: (context, index) {
        final movie = nowPlayingMovies[index];
        return ListTile(
          title: Text(movie.title),
        );
      },
    );*/

    return Column(
      children: [
        CustomAppBar(),
        MoviesSlideShow(movies: slideShowProvider)

        /*Expanded(
            child: ListView.builder(
          itemCount: nowPlayingMovies.length,
          itemBuilder: (context, index) {
            final movie = nowPlayingMovies[index];
            return ListTile(
              title: Text(movie.title),
            );
          },
        ))*/
      ],
    );
  }
}
