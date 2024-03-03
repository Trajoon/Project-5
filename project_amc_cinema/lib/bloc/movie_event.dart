part of 'movie_bloc.dart';

@immutable
sealed class MovieEvent {}

class LoadMovieEvent extends MovieEvent {
  final int selectedTabIndex;

  LoadMovieEvent(this.selectedTabIndex);
}
