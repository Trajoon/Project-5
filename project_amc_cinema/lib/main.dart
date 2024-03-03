import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_amc_cinema/bloc/movie_bloc.dart';
import 'package:project_amc_cinema/widgets/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MovieBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomNavBar(),
        theme: ThemeData(
            scrollbarTheme: ScrollbarThemeData(
                thumbColor: MaterialStateProperty.all(Colors.black))),
      ),
    );
  }
}
