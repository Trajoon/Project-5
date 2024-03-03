import 'package:flutter/material.dart';
import 'package:project_amc_cinema/constants/colors.dart';
import 'package:project_amc_cinema/constants/spacer.dart';
import 'package:project_amc_cinema/helper/assistant.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget(
      {super.key,
      required this.mainText,
      required this.subText,
      this.isDivider = true});

  final String mainText;
  final String subText;
  final bool isDivider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: context.getWidth(context),
          height: context.getHeight(context) / 4.5,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 48, right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mainText,
                      style: const TextStyle(
                          color: AmcColors.iconColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w900),
                    ),
                    size12,
                    Text(
                      subText,
                      style: const TextStyle(
                        color: AmcColors.iconColor,
                        fontSize: 15,
                      ),
                    ),
                    size12,
                    Row(
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                side: const BorderSide(
                                    color: AmcColors.iconColor),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.transparent),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Direction',
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
                                side: const BorderSide(
                                    color: AmcColors.iconColor),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                AmcColors.iconColor),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Showtimes',
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
              ),
              size18,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: isDivider
                    ? const Divider(
                        thickness: 1.5,
                        height: 10,
                        color: AmcColors.MAIN_GREY,
                      )
                    : null,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
