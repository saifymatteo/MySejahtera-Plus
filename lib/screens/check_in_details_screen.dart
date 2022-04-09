import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mysejahtera_plus/components/tiles_item.dart';

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
  late String checkState;

  void getCheckState() {
    if (widget.isCheckIn) {
      checkState = 'In';
    } else {
      checkState = 'Out';
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
                    // topCheck,
                    'Check-$checkState Details',
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
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    widget.isCheckIn == true ? kIconCheckIn : kIconCheckOut,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              // capCheck,
              'CHECKED ${checkState.toUpperCase()}',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.bodyLarge,
                color: kPrimarySwatch,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              // subCheck,
              'Your check-${checkState.toLowerCase()} was recorded',
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
                        ItemListTiles(
                          title: 'LOCATION',
                          item: widget.location,
                        ),
                        ItemListTiles(
                          title: 'NAME',
                          item: widget.name,
                        ),
                        ItemListTiles(
                          title: 'MYSEJAHTERA ID',
                          item: widget.mySjID,
                        ),
                        ItemListTiles(
                          title: 'DATE',
                          item: widget.date,
                        ),
                        ItemListTiles(
                          title: 'TIME',
                          item: widget.time,
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
