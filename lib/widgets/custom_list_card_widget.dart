import 'package:flutter/material.dart';
import 'package:the_movie_session/pages/details_page.dart';
import '../models/movies_models.dart';
import '../utils/apis.utils.dart';

class CustomListCardWidget extends StatelessWidget {
  final Results movie;
  const CustomListCardWidget({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: InkWell(
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (_) => DetailsPage(movie: movie),
                fullscreenDialog: true,
                )
              );
            },
            child: Container(
                height: 200,
                decoration: const BoxDecoration(color: Colors.black54),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [ Hero(
                    tag: movie.id as int,
                    child: Image.network(
                        API.REQUEST_IMG(movie.posterPath as String),
                        loadingBuilder: (_, child, progress) {
                          if (progress == null) return child;

                          return const CircularProgressIndicator.adaptive();
                        },
                      )
                    ),
                      Expanded(
                          child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    movie.title as  String,
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                    softWrap: true,
                                    overflow: TextOverflow.visible,
                                  ),
                                  const Spacer(),
                                  Text(
                                      'Popularidade: ${movie.popularity.toString()}'),
                                  const Spacer(),
                                  Text('Nota: ${movie.voteAverage} / 10')
                                ],
                              )))
                    ]))));
  }
}
