import 'package:dio/dio.dart';
import 'package:movie_app/domain/datasources/movies_datasource.dart';
import 'package:movie_app/domain/entities/movie.dart';
import 'package:movie_app/infraestructure/models/movieDb/movieDbResponse.dart';
import 'package:movie_app/infraestructure/mappers/movie%20mapper.dart';

class MovieDbDatasource extends MoviesDatasource {
  final dio = Dio(
    BaseOptions(baseUrl: 'https://api.themoviedb.org/3/', queryParameters: {
      'api_key': '921edecfc2e83036eb57349c55c6724e',
      'language': 'es-MX',
    }),
  );

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    final response = await dio.get('movie/now_playing');
    final movieDbResponse = MovieDbResponse.fromJson(response.data);
    final List<Movie> movies = movieDbResponse.results
        .where((moviedb) => moviedb.posterPath != "no-poster")
        .map((moviedb) => movieMapper.movieDbToEntity(moviedb))
        .toList();
    return movies;
  }
}
