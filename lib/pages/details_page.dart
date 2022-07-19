import 'package:flutter/material.dart';

import '../models/movies_models.dart';
import '../utils/apis.utils.dart';

class DetailsPage extends StatelessWidget {
  final Results movie;
  const DetailsPage({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(movie.title as String),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    SizedBox(
                        height: MediaQuery.of(context).size.height * .55,
                        width: MediaQuery.of(context).size.width,
                        child: Hero(
                            tag: movie.id as int,
                            child: Image.network(
                              API.REQUEST_IMG(movie.posterPath as String),
                              loadingBuilder: (_, child, progress) {
                                if (progress == null) return child;

                                return const CircularProgressIndicator
                                    .adaptive();
                              },
                            ))),
                    const SizedBox(height: 20),

                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Column(children: [
                        Text(movie.overview as String,
                            style: Theme.of(context).textTheme.subtitle1),
                        const SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.title),
                            const SizedBox(width: 40),
                            Text(movie.originalTitle as String)
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.date_range_outlined),
                            const SizedBox(width: 40),
                            Text(movie.releaseDate as String)
                          ],
                        ),
                      ]),
                    )
                  ],
                ))));
  }
}
