import 'dart:async';

import 'package:flutter/material.dart';

import 'package:the_movie_session/repositories/movies_repository.dart';
import '../models/movies_models.dart';

class MovieController {
  Timer? _debounce;
  final MoviesRepository _moviesRepository;
  MovieController(this._moviesRepository) {
    fetch();
  }

  ValueNotifier<Movies?> movies = ValueNotifier<Movies?>(null);
  ValueNotifier<Search?> search = ValueNotifier<Search?>(null);

  onChanged(String value) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();

    _debounce = Timer(const Duration(milliseconds:  500), () async {

      search.value = await _moviesRepository.getSearchedMovies(value);
    });
  }

  fetch() async {
    movies.value = await _moviesRepository.getMovies();
  }
}