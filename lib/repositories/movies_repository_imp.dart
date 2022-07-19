import 'package:the_movie_session/repositories/movies_repository.dart';
import 'package:the_movie_session/services/dio_service.dart';

import '../models/movies_models.dart';
import '../utils/apis.utils.dart';

class MoviesRepositoryImp implements MoviesRepository {
  final DioService _dioService;
  MoviesRepositoryImp(this._dioService);

  @override
  Future<Movies> getMovies() async {
    var result = await _dioService.getDio().get(API.REQUEST_MOVIE_LIST);
    print(result);

    return Movies.fromJson(result.data);
  }
}