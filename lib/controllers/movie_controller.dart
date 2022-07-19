import 'package:flutter/material.dart';
import 'package:the_movie_session/repositories/movies_repository.dart';
import '../models/movies_models.dart';

class MovieController {
  final MoviesRepository _moviesRepository;
  MovieController(this._moviesRepository) {
    fetch();
  }

  late ValueNotifier<Results> movies;

  fetch() async {
    movies.value = await _moviesRepository.getMovies();
  }
}