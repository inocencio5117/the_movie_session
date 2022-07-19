import 'package:flutter/material.dart';
import 'package:the_movie_session/controllers/movie_controller.dart';
import 'package:the_movie_session/models/movies_models.dart';
import 'package:the_movie_session/repositories/movies_repository_imp.dart';
import 'package:the_movie_session/services/dio_service_imp.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final MovieController _controller = MovieController(
    MoviesRepositoryImp(DioServiceImp()),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder<Movies?>(
            valueListenable: _controller.movies,
            builder: (_, movies, __) {
              return movies != null
                  ? ListView.builder(
                      itemCount: movies.results.length,
                      itemBuilder: (_, idx) =>
                          Text(movies.results[idx].title))
                  : Container(
                  height: 100,
                  color: Colors.blue,
              );
            })
    );
  }
}
