import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/infraestructure/datasource/moviedb_datasource.dart';
import 'package:movie_app/infraestructure/repositories/movie_repository_impl.dart';

//este repositoroio e ssolo lectura, es inmutable
final MovieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImpl(MovieDbDatasource());
});
