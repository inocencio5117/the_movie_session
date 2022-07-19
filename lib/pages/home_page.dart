import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:the_movie_session/controllers/movie_controller.dart';
import 'package:the_movie_session/models/movies_models.dart';
import 'package:the_movie_session/repositories/movies_repository_imp.dart';
import 'package:the_movie_session/services/dio_service_imp.dart';
import 'package:the_movie_session/widgets/custom_list_card_widget.dart';

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
        body: Padding(
            padding: const EdgeInsets.all(28),
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  const SizedBox(height: 40),
                  ValueListenableBuilder(
                      valueListenable: _controller.movies,
                      builder: (_, movies, __) {
                        return Visibility(
                            visible: movies != null,
                            child: Text(
                              "Movies",
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .headline3,
                            )
                        );
                      }
    ),
                  ValueListenableBuilder<Movies?>(
                      valueListenable: _controller.movies,
                      builder: (_, movies, __) {
                        return movies != null
                            ? ListView.separated(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: movies.results.length,
                                itemBuilder: (_, idx) => CustomListCardWidget(movie: movies.results[idx]),
                                separatorBuilder: (_, __) => const Divider(),
                              )
                            : Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(top: 80.0),
                            child: Lottie.asset('assets/lottie.json')
                        );
                      })
                ]))));
  }
}
