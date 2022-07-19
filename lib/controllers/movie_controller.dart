import 'package:flutter/material.dart';
import 'package:the_movie_session/repositories/movies_repository.dart';
import '../models/movies_models.dart';

class MovieController {
  final MoviesRepository _moviesRepository;
  MovieController(this._moviesRepository) {
    fetch();
  }

  ValueNotifier<Movies?> movies = ValueNotifier<Movies?>(null);
  Movies? _cachedMovies;

  onChanged(String value) {
    var list = _cachedMovies?.results
        !.where((element) =>
        element
            .toString()
            .toLowerCase()
            .contains(value.toLowerCase()))
        .toList();

    movies.value = movies.value?.copyWith(results: list);
  }

  fetch() async {
    movies.value = await _moviesRepository.getMovies();
    _cachedMovies = movies.value;
  }
}