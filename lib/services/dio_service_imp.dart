import 'package:dio/dio.dart';
import 'package:the_movie_session/services/dio_service.dart';

class DioServiceImo implements DioService {
  @override
  Dio getDio() {
    return Dio (
      BaseOptions (
        baseUrl: 'https://api.themoviedb.org/4',
        headers: {
          'content-type': 'application/json;charset=utf-8',
          'authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI3NWMyNzI0MDdiYTFlYjc5ZTgwYzExZjJhNzNmMmFmNCIsInN1YiI6IjYyZDVhZTljYzkyYzVkMDA1NGU3ODVmMiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.dMub9LD0e3eBjEhPErFMucjGiqX2o0jR5hSrAt-aZRE0 '
        },
      ),
    );
  }
}