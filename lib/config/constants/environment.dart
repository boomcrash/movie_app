import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String TheMovieDbKey =
      dotenv.env['THE_MOVIEDB_KEY'] ?? 'No hay Api Key';
}
