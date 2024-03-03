import 'package:flutter/material.dart';
import 'package:project_amc_cinema/constants/colors.dart';
import 'package:project_amc_cinema/constants/spacer.dart';
import 'package:project_amc_cinema/helper/assistant.dart';
import 'package:project_amc_cinema/views/amc_offer.dart';
import 'package:project_amc_cinema/widgets/offer_widget.dart';
import 'package:project_amc_cinema/widgets/rich_text_widget.dart';

class DetailOffer1 extends StatelessWidget {
  const DetailOffer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AmcColors.pageColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const OfferDeal(
                  image: "assets/image/Offer2.jpg",
                  text1: 'The Duo Combo',
                  text2: 'Get the duo Combo for SAR 139',
                  haveButton: false,
                ),
                const Divider(
                  thickness: 1,
                  height: 10,
                  color: AmcColors.MAIN_DARKGREY,
                ),
                size24,
                Row(
                  children: [
                    Image.asset(
                      'assets/image/percent.png',
                      width: 30,
                    ),
                    sizeWidth12,
                    const Text(
                      "Combo Details",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w800),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                size12,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        sizeWidth42,
                        Text(
                          "The Package includes:",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    size12,
                    const Row(
                      children: [
                        sizeWidth42,
                        RichTextWidget(
                          lineText: "2 Standrd tickites",
                        ),
                      ],
                    ),
                    size12,
                    const Row(
                      children: [
                        sizeWidth42,
                        RichTextWidget(
                          lineText:
                              "2 Large Popcron(1 Caramel + 1 Salt)",
                        ),
                      ],
                    ),
                    size12,
                    const Row(
                      children: [
                        sizeWidth42,
                        RichTextWidget(
                          lineText: "2 Large soft drinks",
                        ),
                      ],
                    ),
                    size30,
                    const Divider(
                      thickness: 1,
                      height: 10,
                      color: AmcColors.MAIN_DARKGREY,
                    ),
                    size24,
                    Row(
                      children: [
                        Image.asset(
                          'assets/image/listshg.png',
                          width: 30,
                        ),
                        sizeWidth12,
                        const Text(
                          "Terms & Conditions",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w800),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    size12,
                    const Row(
                      children: [
                        sizeWidth42,
                        RichTextWidget(
                          lineText:
                              "Applicable to AMC Daera loyalty \n       members only.",
                        ),
                      ],
                    ),
                    size12,
                    const Row(
                      children: [
                        sizeWidth42,
                        RichTextWidget(
                          lineText:
                              "Offer is applicable during weekdays \n       only.",
                        ),
                      ],
                    ),
                    size12,
                    const Row(
                      children: [
                        sizeWidth42,
                        RichTextWidget(
                          lineText:
                              "Offer is applicable to the AMC \n       standard experience.",
                        ),
                      ],
                    ),
                    size12,
                    const Row(
                      children: [
                        sizeWidth42,
                        RichTextWidget(
                          lineText:
                              "Offer cannot be used with another \n       offer or discount.",
                        ),
                      ],
                    ),
                    size12,
                    const Row(
                      children: [
                        sizeWidth42,
                        RichTextWidget(
                          lineText:
                              "Guest must select the total amount of \n       (4) seats to redeem the offer.",
                        ),
                      ],
                    ),
                    size12,
                    const Row(
                      children: [
                        sizeWidth42,
                        RichTextWidget(
                          lineText:
                              "Additional seats will be charged at full \n       price directly when booking.",
                        ),
                      ],
                    ),
                    size12,
                    const Row(
                      children: [
                        sizeWidth42,
                        RichTextWidget(
                          lineText:
                              "Offer purchased is non-refundable and \n       non-transferable.",
                        ),
                      ],
                    ),
                    size12,
                    const Row(
                      children: [
                        sizeWidth42,
                        RichTextWidget(
                          lineText:
                              "Cinema’s terms & conditions as well as \n       the General Authority of Media \n       Regulation rules are applied.",
                        ),
                      ],
                    ),
                    size24,
                    const Row(
                      children: [
                        sizeWidth42,
                        RichTextWidget(
                          lineText: "Terms and Conditions apply.",
                        ),
                      ],
                    ),
                    size60,
                    Row(
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 245, 31, 15)),
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
                        sizeWidth24,
                        ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                side: const BorderSide(color: Colors.blue),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                AmcColors.pageColor),
                          ),
                          onPressed: () {
                            context.pop(context, AmcOffer());
                          },
                          child: const Text(
                            'Back to offer',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
