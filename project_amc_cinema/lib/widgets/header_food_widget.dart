import 'package:flutter/material.dart';
import 'package:project_amc_cinema/constants/colors.dart';
import 'package:project_amc_cinema/helper/assistant.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getWidth(context),
      height: context.getHeight(context) / 4.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset(
            'assets/image/fandd_top_banner2.jpg',
            width: context.getWidth(context),
            fit: BoxFit.cover,
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.5),
                    Colors.transparent,
                    Colors.transparent,
                    Colors.transparent,
                    Colors.black,
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
            right: 35,
            bottom: 45,
            child: Text(
              'Food & Drinks at AMC',
              style: TextStyle(
                  color: AmcColors.iconColor,
                  fontSize: 35,
                  fontWeight: FontWeight.w900),
            ),
          ),
          const Positioned(
            bottom: -30,
            right: 5,
            left: 5,
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: SizedBox(
                  child: Text(
                "We're always innovating and exploring new ways to bring the best food and drinks to our cinemas.",
                style: TextStyle(
                  color: AmcColors.iconColor,
                  fontSize: 17, height: 1.1
                ),
              )),
            ),
          )
        ],
      ),
    );
  }
}
