part of 'movie_bloc.dart';

@immutable
sealed class MovieState {}

final class MovieInitial extends MovieState {}

class SuccessMovieState extends MovieState {
  final List<Movie> movies;

  SuccessMovieState({required this.movies});
}

class LoadMovieState extends MovieState {}

class ErrorState extends MovieState {}
