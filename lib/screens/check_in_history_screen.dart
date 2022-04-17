import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/button_close.dart';
import '../components/button_dropdown.dart';
import '../components/text_title.dart';
import '../components/tiles_check_in_details.dart';
import '../helper/check_in_icons.dart';
import 'check_in_details_screen.dart';

class CheckInHistoryScreen extends StatelessWidget {
  CheckInHistoryScreen({Key? key, required this.onPressed}) : super(key: key);

  final VoidCallback onPressed;

  // TODO: Implement statistic later
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
                      textStyle: Theme.of(context).textTheme.titleMedium,
                      fontWeight: FontWeight.w600,
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
                      closedColor: const Color(0xFFfafafa),
                      openBuilder: (context, closedContainer) =>
                          CheckInDetailsScreen(
                        onPressed: closedContainer,
                        location: 'Suria KLCC',
                        name: 'Anthony Parker',
                        mySjID: 'anthonyparker@mail.com',
                        date: '30/1/2021',
                        time: '10:05:55 PM',
                        isCheckIn: true,
                      ),
                      closedBuilder: (context, openContainer) =>
                          CheckInDetailsListTiles(
                        location: 'Check-in at Suria KLCC',
                        date: 'January 30, 2022',
                        iconCheckInOrOut: CheckInIcons.checkin,
                        onPressed: openContainer,
                      ),
                    ),
                    OpenContainer(
                      closedElevation: 0,
                      closedColor: const Color(0xFFfafafa),
                      openBuilder: (context, closedContainer) =>
                          CheckInDetailsScreen(
                        onPressed: closedContainer,
                        location: 'Kedai Mamak Pelita',
                        name: 'Anthony Parker',
                        mySjID: 'anthonyparker@mail.com',
                        date: '30/1/2021',
                        time: '9:05:55 PM',
                        isCheckIn: false,
                      ),
                      closedBuilder: (context, openContainer) =>
                          CheckInDetailsListTiles(
                        location: 'Check-out at Kedai Mamak Pelita',
                        date: 'January 30, 2022',
                        iconCheckInOrOut: CheckInIcons.checkout,
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
