import 'package:flutter/material.dart';
import 'package:project_amc_cinema/constants/colors.dart';
import 'package:project_amc_cinema/constants/spacer.dart';

class AMCDAERA extends StatelessWidget {
  const AMCDAERA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AmcColors.pageColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            'assets/image/a77cda59-50d6-4df8-9184-d05d9046bfd5.jpg',
            width: 275,
            height: 275,
          ),
          size60,
          const Text(
            'Join AMC Daera',
            style: TextStyle(
                color: AmcColors.iconColor,
                fontSize: 25,
                fontWeight: FontWeight.w900),
          ),
          size24,
          const Text(
            'The First Loyalty Program for Cinemas in KSA',
            style: TextStyle(
              color: AmcColors.iconColor,
              fontSize: 15,
            ),
          ),
          size24,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: const BorderSide(color: AmcColors.iconColor),
                    ),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                ),
                onPressed: () {},
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                    color: AmcColors.iconColor,
                    fontSize: 16,
                  ),
                ),
              ),
              sizeWidth24,
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: const BorderSide(color: AmcColors.iconColor),
                    ),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(AmcColors.iconColor),
                ),
                onPressed: () {},
                child: const Text(
                  'Join Now and Get Rewards',
                  style: TextStyle(
                    color: Color(0xff311217),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}