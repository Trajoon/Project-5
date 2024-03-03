import 'package:flutter/material.dart';
import 'package:project_amc_cinema/constants/colors.dart';
import 'package:project_amc_cinema/constants/spacer.dart';
import 'package:project_amc_cinema/widgets/offer_widget.dart';

class AmcOffer extends StatelessWidget {
  const AmcOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AmcColors.pageColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'AMC Exclusive Offers',
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Scrollbar(
          child: ListView(
            children: const [
              OfferDeal(
                image: "assets/image/Offer1.jpg",
                text1: 'The Sharing Combo',
                text2: 'Get the Sharing Combo for SAR 239',
                haveButton: true,
              ),
              size60,
              OfferDeal(
                image: "assets/image/Offer2.jpg",
                text1: 'The Duo Combo',
                text2: 'Get the duo Combo for SAR 239',
                haveButton: true,
                isSharing: false,
              ),  
            ],
          ),
        ),
      ),
    );
  }
}
