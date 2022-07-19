import 'package:flutter/material.dart';
import 'package:the_movie_session/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Movie Session',
      theme: ThemeData.dark(),
      home: const HomePage(),
      );
  }
}

