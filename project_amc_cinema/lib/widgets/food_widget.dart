import 'package:flutter/material.dart';
import 'package:project_amc_cinema/constants/colors.dart';
import 'package:project_amc_cinema/helper/assistant.dart';

class FoodCard extends StatelessWidget {
  const FoodCard(
      {super.key,
      required this.img,
      required this.logo,
      required this.mainText,
      required this.subText});

  final String img;
  final String logo;
  final String mainText;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getWidth(context),
      height: context.getHeight(context) / 1.6,
      color: Colors.amber,
      child: Stack(
        children: [
          // Background image
          Image.asset(
            img,
            height: context.getHeight(context),
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 50,
            left: 50,
            right: 50,
            child: Image.asset(
              logo,
              width: 175,
              height: 175,
            ),
          ),
          Positioned(
            left: 15,
            top: 260,
            child: Text(
              mainText,
              style: TextStyle(
                  color: AmcColors.iconColor,
                  fontSize: 25,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Positioned(
            top: 300,
            right: 30,
            left: 15,
            child: SizedBox(
              child: Text(
                subText,
                style: TextStyle(
                  color: AmcColors.iconColor,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
