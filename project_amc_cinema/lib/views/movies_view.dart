import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_amc_cinema/bloc/movie_bloc.dart';
import 'package:project_amc_cinema/constants/colors.dart';
import 'package:project_amc_cinema/widgets/movie_card_widget.dart';

class SeeMovieView extends StatelessWidget {
  const SeeMovieView({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<MovieBloc>().add(LoadMovieEvent(0));
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        backgroundColor: AmcColors.pageColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            'AMC Cinemas',
            style: TextStyle(
                color: AmcColors.iconColor,
                fontSize: 28,
                fontWeight: FontWeight.w900),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/image/person.jpg",
                  width: 30,
                  height: 30,
                ))
          ],
          bottom: TabBar(
              onTap: (index) =>
                  context.read<MovieBloc>().add(LoadMovieEvent(index)),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: AmcColors.labelColor,
              unselectedLabelColor: AmcColors.MAIN_GREY,
              dividerColor: AmcColors.pageColor,
              labelStyle: const TextStyle(
                color: AmcColors.iconColor,
                fontSize: 17,
              ),
              indicatorWeight: 4,
              tabs: const [
                Tab(
                  text: "NOW PLAYING",
                ),
                Tab(
                  text: "COMING SOON",
                ),
              ]),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: BlocBuilder<MovieBloc, MovieState>(
            builder: (context, state) {
              if (state is MovieInitial || state is LoadMovieState) {
                return const Center();
              }
              if (state is SuccessMovieState) {
                return GridView.builder(
                  itemCount: state.movies.length,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    mainAxisExtent: 300,
                    crossAxisSpacing: 3,
                    mainAxisSpacing: 3,
                  ),
                  itemBuilder: (context, index) {
                    return MovieCard(
                      movie: state.movies[index],
                    );
                  },
                );
              } else {
                return const Text("Error");
              }
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          shape: CircleBorder(),
          child: Image.asset(
            'assets/image/filter.jpg',
            width: 36.0,
            height: 36.0,
          ),
        ),
      ),
    );
  }
}
