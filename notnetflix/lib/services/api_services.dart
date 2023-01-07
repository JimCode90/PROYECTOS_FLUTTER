
import 'package:dio/dio.dart';
import 'package:notnetflix/models/movie.dart';
import 'package:notnetflix/services/api.dart';


class APIServices {

  final API api = API();
  final Dio dio = Dio();

  Future<Response> getData(String path, {Map<String, dynamic>? params}) async {
    String _url = api.baseURL + path;
    Map<String, dynamic> query = {
      'api_key' : api.apiKey,
      'language' : 'es-ES',
    };

    if(params != null){
      query.addAll(params);
    }

    final response = await dio.get(_url, queryParameters: query);

    if(response.statusCode == 200){
      return response;
    } else {
      throw response;
    }

  }

  Future<List<Movie>> getPopularMovies({required int pageNumber}) async {

    Response response = await getData('/movie/popular', params: {
      'page' : pageNumber
    });

    if(response.statusCode == 200){
      Map data = response.data;
      List<dynamic> results = data['results'];
      List<Movie> movies = [];
      for(Map<String, dynamic> json in results){
        Movie movie = Movie.fromJson(json);
        movies.add(movie);
      }

      return movies;
    }else {
      throw response;
    }

  }

}