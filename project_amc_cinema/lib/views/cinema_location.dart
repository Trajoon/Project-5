import 'package:flutter/material.dart';
import 'package:project_amc_cinema/constants/colors.dart';
import 'package:project_amc_cinema/constants/spacer.dart';
import 'package:project_amc_cinema/helper/assistant.dart';
import 'package:project_amc_cinema/widgets/location_widget.dart';

class CinemaLocation extends StatelessWidget {
  const CinemaLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AmcColors.pageColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            'Our Cinemas',
            style: TextStyle(
              color: AmcColors.iconColor,
              fontSize: 28,
              fontWeight: FontWeight.w900,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/image/person.jpg",
                width: 30,
                height: 30,
              ),
            ),
          ],
        ),
        body: Container(
          width: context.getWidth(context),
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xff311217),
                Color(0xff4f1018),
                Color(0xff311217),
                Color(0xff4f1018),
                Color(0xff311217),
              ],
            ),
          ),
          child: Scrollbar(
            thickness: 3,
            interactive: true,
            child: ListView(
              children: const [
                size30,
                LocationWidget(
                  mainText: 'AMC Al Khair 9 - Riyadh',
                  subText: 'Al Makan Mall, Prince Muhamad Ibn \nAbdulaziz Rd, Riyadh',
                ),
                LocationWidget(
                  mainText: 'AMC Dawadmi 3 - Al Dawadmi',
                  subText: 'Al Makan Mall, King Abdulaziz Rd, Al Dawadmi',
                ),
                LocationWidget(
                  mainText: 'AMC Hafr Al Batin 8 - Hafr Al Batin',
                  subText: 'Al Makan Mall, King Abdulaziz Rd, Hafar Al Batin',
                ),
                LocationWidget(
                  mainText: 'AMC Tabuk Boulevard 7 - Tabuk',
                  subText: 'Tabuk Boulevard AL Qadisiyah, Tabuk',
                ),
                LocationWidget(
                  mainText: 'AMC Azizia Plaza 3 - Riyadh',
                  subText: 'Azizia Plaza, Alzizia Rd, Riyadh',
                ),
                LocationWidget(
                  mainText: 'AMC Panorama Mall 10 - Riyadh',
                  subText: 'Panorama Mall, Takhassusi St, Riyadh',
                ),
                LocationWidget(
                  mainText: 'AMC Riyadh Gallery 9 - Riyadh',
                  subText: 'Riyadh Gallery Mall, King Fahad Rd, Riyadh',
                ),
                LocationWidget(
                  mainText: 'AMC Garden 5 - Hail',
                  subText: 'Garden Mall Jeddah St, Aja, Hail',
                ),
                LocationWidget(
                  mainText: 'AMC Karam 5 - Al Majmaah',
                  subText: 'Karam Mall, King Khalid Rd, Al Majmaah',
                ),
                LocationWidget(
                  mainText: 'AMC The Walk 7 - Al Hofuf',
                  subText: 'The Walk Project Al Hofuf, Al Hofuf',
                ),
                LocationWidget(
                  mainText: 'AMC Ajdan Walk 9 - Al Khobar',
                  subText: 'Ajdan Walk, Prince Turkey St, Al Khobar',
                ),
                LocationWidget(
                  mainText: 'AMC Stars Avenue 9 - Jeddah',
                  subText: 'Stars Avenue, King Abdulaziz Rd, Jeddah',
                  isDivider: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}