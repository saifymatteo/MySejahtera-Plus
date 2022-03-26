import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../components/button_color.dart';
import '../components/card_last_check_in.dart';
import '../components/card_risk_status.dart';
import '../components/card_vaccinated.dart';
import '../components/text_title.dart';
import '../helper/constant.dart';
import 'check_in_history_screen.dart';
import 'check_in_qr_scanner_screen.dart';

class CheckInScreen extends StatelessWidget {
  CheckInScreen({Key? key}) : super(key: key);

  // TODO: Rework on the date later
  final DateTime currentDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // TODO: Implement global variable for date.
                Text(
                  DateFormat('MMMM d, EEEE').format(currentDate),
                  style: TextStyle(color: kPrimarySwatch),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TextTitle(
                      title: 'Check-in 👋',
                    ),
                    // TODO: Implement onPressed() to History Screen
                    OpenContainer(
                      openBuilder: (context, closedContainer) =>
                          CheckInHistoryScreen(
                        onPressed: closedContainer,
                      ),
                      closedShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      closedBuilder: (context, openContainer) => ButtonColor(
                        text: 'History',
                        onPressed: openContainer,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SingleChildScrollView(
              child: Column(
                children: const [
                  CardVaccinated(),
                  CardRiskStatus(),
                  CardLastCheckIn(),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: OpenContainer(
              openBuilder: (context, closedContainer) => CheckInQrScannerScreen(
                onPressed: closedContainer,
              ),
              closedColor: kPrimarySwatch,
              closedShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              closedBuilder: (context, openContainer) => InkWell(
                onTap: openContainer,
                child: Center(
                  heightFactor: 2,
                  child: Text(
                    'Scan QR Check-In',
                    style: GoogleFonts.poppins(
                      color: kWhiteColor,
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
