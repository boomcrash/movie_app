import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/domain/entities/movie.dart';
import 'package:movie_app/presentation/providers/movies/movies_providers.dart';

final moviesSlideShowProvider = Provider<List<Movie>>((ref) {
  final nowPlayingMovies = ref.watch(nowPlayingMoviesProvider);

  if (nowPlayingMovies.length == 0) return [];

  return nowPlayingMovies.sublist(0, 10);
});
