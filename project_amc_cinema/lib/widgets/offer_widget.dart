import 'package:flutter/material.dart';
import 'package:project_amc_cinema/constants/colors.dart';
import 'package:project_amc_cinema/constants/spacer.dart';
import 'package:project_amc_cinema/helper/assistant.dart';
import 'package:project_amc_cinema/views/detail_offer1.dart';
import 'package:project_amc_cinema/views/detail_offer2.dart';

class OfferDeal extends StatelessWidget {
  const OfferDeal(
      {super.key,
      required this.image,
      required this.text1,
      required this.text2,
      this.haveButton = false, this.isSharing = true});

  final String image;
  final String text1;
  final String text2;
  final bool haveButton;
  final bool isSharing;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        size18,
        Image.asset(image),
        size18,
        Text(
          text1,
          style: TextStyle(
              color: AmcColors.iconColor,
              fontSize: 25,
              fontWeight: FontWeight.w900),
        ),
        size12,
        Text(
          text2,
          style: TextStyle(
            color: AmcColors.iconColor,
            fontSize: 17,
          ),
        ),
        size18,
        haveButton
            ? ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: const BorderSide(color: AmcColors.iconColor),
                    ),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                 isSharing ? context.push(context, const DetailOffer()) : context.push(context, const DetailOffer1());
                },
                child: const Text(
                  'Know More',
                  style: TextStyle(
                    color: AmcColors.iconColor,
                    fontSize: 16,
                  ),
                ),
              )
            : ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 242, 20, 4)),
                ),
                onPressed: () {},
                child: const Text(
                  'View Showtimes',
                  style: TextStyle(
                    color: AmcColors.iconColor,
                    fontSize: 16,
                  ),
                ),
              ),
        size6
      ],
    );
  }
}
