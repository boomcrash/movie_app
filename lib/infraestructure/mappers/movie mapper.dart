import 'package:movie_app/domain/entities/movie.dart';
import 'package:movie_app/infraestructure/models/movieDb/movie_movieDb.dart';

class movieMapper {
  static Movie movieDbToEntity(MovieFromMovieDb movieDb) => Movie(
      adult: movieDb.adult,
      backdropPath: (movieDb.backdropPath != '')
          ? 'https://image.tmdb.org/t/p/w500${movieDb.backdropPath}'
          : 'https://c.tenor.com/cF2pK-0zQugAAAAC/tenor.gif',
      genreIds: movieDb.genreIds.map((e) => e.toString()).toList(),
      id: movieDb.id,
      originalLanguage: movieDb.originalLanguage,
      originalTitle: movieDb.originalTitle,
      overview: movieDb.overview,
      popularity: movieDb.popularity,
      posterPath: (movieDb.posterPath != '') ? movieDb.posterPath : 'no-poster',
      releaseDate: movieDb.releaseDate,
      title: movieDb.title,
      video: movieDb.video,
      voteAverage: movieDb.voteAverage,
      voteCount: movieDb.voteCount);
}
