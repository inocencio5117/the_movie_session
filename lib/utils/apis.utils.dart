// ignore_for_file: non_constant_identifier_names

class API {
  static String REQUEST_IMG(String img) => 'https://image.tmdb.org/t/p/w500/$img';
  static String REQUEST_SEARCH_MOVIE(String query) =>
      'https://api.themoviedb.org/3/search/movie?api_key=75c272407ba1eb79e80c11f2a73f2af4&language=en-US&query=$query&page=1&include_adult=false&language=pt-BR';
  static const REQUEST_MOVIE_LIST = 'list/1?page=1&language=pt-BR';
}