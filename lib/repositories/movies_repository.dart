import '../models/movies_models.dart';

abstract class MoviesRepository {
  Future<Movies> getMovies();
  Future<Search> getSearchedMovies(String query);
}