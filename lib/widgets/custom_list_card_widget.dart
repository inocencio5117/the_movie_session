import 'package:flutter/material.dart';
import '../models/movies_models.dart';
import '../utils/apis.utils.dart';

class CustomListCardWidget extends StatelessWidget {
  final Results movie;
  const CustomListCardWidget({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        decoration: const BoxDecoration(color: Colors.black54),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Image.network(
            API.REQUEST_IMG(movie.posterPath),
            loadingBuilder: (_, child, progress) {
              if (progress == null) return child;

              return const CircularProgressIndicator.adaptive();
            },
          ),
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        movie.title,
                        style: Theme.of(context).textTheme.headline6,
                        softWrap: true,
                        overflow: TextOverflow.visible,
                      ),
                      const Spacer(),
                      Text('Popularidade: ${movie.popularity.toString()}'),
                      const Spacer(),
                      Text('Nota: ${movie.voteAverage} / 10')
                    ],
                  )))
        ]));
  }
}
