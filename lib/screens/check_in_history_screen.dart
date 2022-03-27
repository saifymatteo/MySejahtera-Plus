import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:mysejahtera_plus/screens/check_in_in_details.dart';
import 'package:mysejahtera_plus/screens/check_in_out_details.dart';
import 'package:mysejahtera_plus/components/button_close.dart';
import 'package:mysejahtera_plus/components/button_dropdown.dart';
import 'package:mysejahtera_plus/components/text_title.dart';
import 'package:mysejahtera_plus/components/tiles_check_in.dart';
import 'package:mysejahtera_plus/helper/check_in_icons_icons.dart';
import 'package:mysejahtera_plus/helper/constant.dart';

class CheckInHistoryScreen extends StatelessWidget {
  CheckInHistoryScreen({Key? key, required this.onPressed}) : super(key: key);

  final VoidCallback onPressed;

  final List<String> dropdownItems = [
    'This Month',
    'This Quarter',
    'This Year',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: ButtonClose(onPressed: onPressed),
              ),
              const TextTitle(title: 'History'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'January 01 - January 30',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  ButtonDropDown(
                    initialValue: dropdownItems.elementAt(0),
                    dropdownItems: dropdownItems,
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  children: [
                    //! TODO: Dynamically generate this with ListView.builder
                    OpenContainer(
                      closedElevation: 0,
                      closedColor: kWhiteColor.withOpacity(0),
                      openBuilder: (context, closedContainer) =>
                          CheckInInDetails(
                        onPressed: closedContainer,
                        location: 'Suria KLCC',
                        name: 'Anthony Parker',
                        mySjID: 'anthonyparker@mail.com',
                        date: '30/1/2021',
                        time: '10:05:55 PM',
                      ),
                      closedBuilder: (context, openContainer) => CheckInTiles(
                        location: 'Check-in at Suria KLCC',
                        date: 'January 30, 2022',
                        iconCheckInOrOut: Icon(
                          CheckInIcons.checkin,
                          color: kWhiteColor,
                        ),
                        onPressed: openContainer,
                      ),
                    ),
                    OpenContainer(
                      closedElevation: 0,
                      closedColor: kWhiteColor.withOpacity(0),
                      openBuilder: (context, closedContainer) =>
                          CheckInOutDetails(
                        onPressed: closedContainer,
                        location: 'Kedai Mamak Pelita',
                        name: 'Anthony Parker',
                        mySjID: 'anthonyparker@mail.com',
                        date: '30/1/2021',
                        time: '9:05:55 PM',
                      ),
                      closedBuilder: (context, openContainer) => CheckInTiles(
                        location: 'Check-out at Kedai Mamak Pelita',
                        date: 'January 30, 2022',
                        iconCheckInOrOut: Icon(
                          CheckInIcons.checkout,
                          color: kWhiteColor,
                        ),
                        onPressed: openContainer,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
