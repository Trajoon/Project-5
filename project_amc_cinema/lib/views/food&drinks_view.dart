import 'package:flutter/material.dart';
import 'package:project_amc_cinema/constants/colors.dart';
import 'package:project_amc_cinema/constants/spacer.dart';
import 'package:project_amc_cinema/widgets/food_widget.dart';
import 'package:project_amc_cinema/widgets/header_food_widget.dart';

class FoodDrinksView extends StatelessWidget {
  const FoodDrinksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AmcColors.pageColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Food & Drinks',
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
      ),
      body: Scrollbar(
        child: ListView(
          children: const [
            HeaderWidget(),
            size12,
            FoodCard(
              img: 'assets/image/English_WereGoingShopping3.jpg',
              logo: 'assets/image/amc-cinemasouq_1-removebg-preview.png',
              mainText: "We're going shopping!",
              subText: "The best part of Cinema Souq is you. With an unconventional open floor plan, you set the pace – whether leisurely shopping or moving with precision.\n\nNo ticket, no problem. Come on in and enjoy AMC Food and Beverage. Cinema Souq is available to everyone.",
              
            ),
            FoodCard(
              img: 'assets/image/English_CheersToTheMovies213.jpg',
              logo: 'assets/image/MacGUFFINS.png',
              mainText: "Cheers to the Movies",
              subText: "The term 'macguffin,' coined by Alfred Hitchcock, refers to a plot device that propels a movie forward. Our specialty mocktails and coffee drinks will be just the thing to enhance this movie experience into a story worth remembering.",
              
            ),
            FoodCard(
              img: 'assets/image/English_GourmetGreatness321.jpg',
              logo: 'assets/image/amc-sweettreat.png',
              mainText: "Gourmet Greatness",
              subText: "'Movies' means popcorn and dessert. Handcrafted bubble waffles and crepes with your favorite toppings made fresh just for you, custom pick'n'mix, and decadent cake jars are just some of many dessert choices.",
              
            ),
            FoodCard(
              img: 'assets/image/English_TheSweetestThing%20123.jpg',
              logo: 'assets/image/sweetest_thing.png',
              mainText: "Irresistable taste",
              subText: "The sumptuous sweetness of Cookies N Cream is here at AMC. Grab your favorite treat before you sit down and enjoy your movie.",
             
            ),
          ],
        ),
      ),
    );
  }
}
