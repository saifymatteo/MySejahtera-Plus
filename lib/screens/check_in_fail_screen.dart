import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../components/button_color.dart';
import '../helper/constant.dart';

class CheckInFailScreen extends StatelessWidget {
  const CheckInFailScreen({
    Key? key,
    required this.scannerController,
  }) : super(key: key);

  final MobileScannerController scannerController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.warning_rounded,
                color: kVaccinatedNot,
                size: MediaQuery.of(context).size.width / 2,
              ),
              Text(
                'Invalid QR',
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                  color: kDarkGreyColor.withOpacity(0.5),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonColor(
                text: 'Close',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
