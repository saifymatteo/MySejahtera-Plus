import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helper/constant.dart';

class CheckInDetailsScreen extends StatefulWidget {
  const CheckInDetailsScreen({
    Key? key,
    required this.onPressed,
    required this.location,
    required this.name,
    required this.mySjID,
    required this.date,
    required this.time,
    required this.isCheckIn,
  }) : super(key: key);

  final VoidCallback onPressed;

  final String location;
  final String name;
  final String mySjID;
  final String date;
  final String time;
  final bool isCheckIn;

  @override
  State<CheckInDetailsScreen> createState() => _CheckInDetailsScreenState();
}

class _CheckInDetailsScreenState extends State<CheckInDetailsScreen> {
  late String topCheck;
  late String capCheck;
  late String subCheck;

  void getCheckState() {
    if (widget.isCheckIn) {
      topCheck = 'Check-In Details';
      capCheck = 'CHECKED IN';
      subCheck = 'Your check-in was recorded';
    } else {
      topCheck = 'Check-Out Details';
      capCheck = 'CHECKED OUT';
      subCheck = 'Your check-out was recorded';
    }
  }

  @override
  void initState() {
    getCheckState();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Center(
                  heightFactor: 1.9,
                  child: Text(
                    topCheck,
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.headline6,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: widget.onPressed,
                    iconSize: 40,
                    icon: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 120,
              height: 120,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/images/check_in.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              capCheck,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.bodyLarge,
                color: kPrimarySwatch,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              subCheck,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.bodyLarge,
                color: kDarkGreyColor.withOpacity(0.5),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Card(
                  elevation: 10,
                  color: kDarkWhiteColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 5, right: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          dense: true,
                          title: Text(
                            'LOCATION',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.titleSmall,
                              color: kDarkGreyColor.withOpacity(0.5),
                            ),
                          ),
                          subtitle: Text(
                            widget.location,
                            style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.titleMedium,
                              color: kDarkGreyColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        ListTile(
                          dense: true,
                          title: Text(
                            'NAME',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.titleSmall,
                              color: kDarkGreyColor.withOpacity(0.5),
                            ),
                          ),
                          subtitle: Text(
                            widget.name,
                            style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.titleMedium,
                              color: kDarkGreyColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        ListTile(
                          dense: true,
                          title: Text(
                            'MYSEJAHTERA ID',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.titleSmall,
                              color: kDarkGreyColor.withOpacity(0.5),
                            ),
                          ),
                          subtitle: Text(
                            widget.mySjID,
                            style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.titleMedium,
                              color: kDarkGreyColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        ListTile(
                          dense: true,
                          title: Text(
                            'DATE',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.titleSmall,
                              color: kDarkGreyColor.withOpacity(0.5),
                            ),
                          ),
                          subtitle: Text(
                            widget.date,
                            style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.titleMedium,
                              color: kDarkGreyColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        ListTile(
                          dense: true,
                          title: Text(
                            'TIME',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.titleSmall,
                              color: kDarkGreyColor.withOpacity(0.5),
                            ),
                          ),
                          subtitle: Text(
                            widget.time,
                            style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.titleMedium,
                              color: kDarkGreyColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
