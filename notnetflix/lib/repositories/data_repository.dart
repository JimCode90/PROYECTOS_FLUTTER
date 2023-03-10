

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:notnetflix/models/movie.dart';
import 'package:notnetflix/services/api_services.dart';

class DataRepository with ChangeNotifier {
  final APIServices apiService = APIServices();
  final List<Movie> _popularMovieList = [];
  int _popularMoviePageIndex = 1;

  List<Movie> _nowPlaying = [];
  int _nowPlayingPageIndex = 1;

  final List<Movie> _upcomingMovies = [];
  int _upcomingMoviesPageIndex = 1;

  //getters
  List<Movie> get popularMovieList => _popularMovieList;
  List<Movie> get nowPlaying => _nowPlaying;
  List<Movie> get upcomingMovies => _upcomingMovies;


  Future<void> getPopularMovies() async {
    try{

      List<Movie> movies = await apiService.getPopularMovies(pageNumber: _popularMoviePageIndex);
      _popularMovieList.addAll(movies);
      _popularMoviePageIndex++;
      notifyListeners();

    }on Response catch (response) {
      print('Error: ${response.statusCode}');
      rethrow;
    }
  }

  Future<void> getNowPlaying() async {
    try{

      List<Movie> movies = await apiService.getNowPlaying(pageNumber: _nowPlayingPageIndex);
      _nowPlaying.addAll(movies);
      _nowPlayingPageIndex++;
      notifyListeners();

    }on Response catch (response) {
      print('Error: ${response.statusCode}');
      rethrow;
    }
  }

  Future<void> getUpcomingMovies() async {
    try {
      List<Movie> movies = await apiService.getUpcomingMovies(
          pageNumber: _upcomingMoviesPageIndex);
      _upcomingMovies.addAll(movies);
      _upcomingMoviesPageIndex++;
      notifyListeners();
    } on Response catch (response) {
      print("ERROR: ${response.statusCode}");
      rethrow;
    }
  }

  Future<void> initData() async {
    await getPopularMovies();
    await getNowPlaying();
    await getUpcomingMovies();
  }

}