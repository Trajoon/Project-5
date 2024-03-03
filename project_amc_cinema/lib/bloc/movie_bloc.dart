import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:project_amc_cinema/data/movie_dataset.dart';
import 'package:project_amc_cinema/models/movie.dart';


part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {

  /// List to store movies
  List<Movie> moviesList = [];


  MovieBloc() : super(MovieInitial()) {
    on<MovieEvent>((event, emit) {
      emit(MovieInitial());
    });

   
    on<LoadMovieEvent>(
      (event, emit) async {
        try {
          /*---- Emitting to Indicate loading ----*/
          emit(LoadMovieState()); 

          await Future.delayed(Duration(microseconds: 1));

          List<Movie> moviesList = [];

          /*---- Iterating through the movieDataset ----*/
          for (var element in movieDataset) {

            Movie movie = Movie.fromJson(element);

            /*---- Filtering movies based on selectedTabIndex and type ----*/
            if (event.selectedTabIndex == 0 && movie.type == 'NOW PLAYING') {
              moviesList.add(movie);
            } else if (event.selectedTabIndex == 1 && movie.type == 'COMING SOON') {
              moviesList.add(movie);
            }
          }

          /*---- Emitting the filtered moviesList ----*/
          emit(SuccessMovieState(movies: moviesList));
        } catch (e) {
   
          emit(ErrorState());
        }
      },
    );
  }
}