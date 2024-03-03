import 'package:flutter/material.dart';
import 'package:project_amc_cinema/constants/colors.dart';
import 'package:project_amc_cinema/views/amc_daera.dart';
import 'package:project_amc_cinema/views/amc_offer.dart';
import 'package:project_amc_cinema/views/food&drinks_view.dart';
import 'package:project_amc_cinema/views/cinema_location.dart';
import 'package:project_amc_cinema/views/movies_view.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  final List<Widget> pages = [
    SeeMovieView(),
    CinemaLocation(),
    AmcOffer(),
    FoodDrinksView(),
    AMCDAERA(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AmcColors.pageColor,
        selectedItemColor: AmcColors.iconColor,
        unselectedItemColor: AmcColors.MAIN_DARKGREY,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        onTap: (index) => setState(() => currentIndex = index),
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            // Define the active and inactive icons for the first tab
            activeIcon: Image.asset('assets/image/img_34101_removebg_preview_kY8_icon.ico', width: 40),
            icon: Image.asset('assets/image/img_34101_removebg_preview_kY8_icon.ico', width: 40),
            backgroundColor: AmcColors.MAIN_DARKGREY,
            label: 'SEE A MOVIE',
          ),
          BottomNavigationBarItem(
            // Define the active and inactive icons for the second tab assets/image/img_34101_removebg_preview_uO5_icon.ico
            activeIcon: Image.asset('assets/image/img_34101_removebg_preview_uO5_icon.ico', width: 40),
            backgroundColor: AmcColors.MAIN_DARKGREY,
            icon: Image.asset('assets/image/img_34101_removebg_preview_uO5_icon.ico', width: 40),
            label: 'OUR CINEMAS',
          ),
          BottomNavigationBarItem(
            // Define the active and inactive icons for the first tab
            activeIcon: Image.asset('assets/image/img_34101_removebg_preview_h9P_icon.ico', width: 40),
            icon: Image.asset('assets/image/img_34101_removebg_preview_h9P_icon.ico', width: 40),
            //backgroundColor: colorPage,
            label: 'AMC OFFERS',
          ),
          BottomNavigationBarItem(
            // Define the active and inactive icons for the first tab assets/image/img_34101_removebg_preview_bRh_icon.ico
            activeIcon: Image.asset('assets/image/img_34101_removebg_preview_bRh_icon.ico', width: 40),
            icon: Image.asset('assets/image/img_34101_removebg_preview_bRh_icon.ico', width: 40),
            //backgroundColor: colorPage,
            label: 'FOOD & DRINKS',
          ),
          BottomNavigationBarItem(
            // Define the active and inactive icons for the first tab
            activeIcon: Image.asset(
              'assets/image/fffff.png',
              width: 52,
            ),
            icon: Image.asset(
              'assets/image/fffff.png',
              width: 52,
            ),
            //backgroundColor: colorPage,
            label: 'AMC DAERA',
          ),
        ],
      ),
    );
  }
}
