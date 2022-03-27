import 'package:flutter/material.dart';
import 'package:mysejahtera_plus/components/button_close.dart';
import 'package:mysejahtera_plus/components/button_color.dart';
import 'package:mysejahtera_plus/helper/check_in_icons_icons.dart';
import 'package:mysejahtera_plus/helper/constant.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:scan/scan.dart';

class CheckInQrScannerScreen extends StatefulWidget {
  const CheckInQrScannerScreen({Key? key, required this.onPressed})
      : super(key: key);

  final VoidCallback onPressed;

  @override
  State<CheckInQrScannerScreen> createState() => _CheckInQrScannerScreenState();
}

class _CheckInQrScannerScreenState extends State<CheckInQrScannerScreen> {
  ScanController scanController = ScanController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: ButtonClose(onPressed: widget.onPressed),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Icon(
                  CheckInIcons.scanIcon,
                  color: kPrimarySwatch,
                  size: 50,
                ),
              ),
              Text(
                'Place the QR code in the area',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.bodyLarge,
                  color: kDarkGreyColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Scanning will start automatically',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.bodyLarge,
                  color: kDarkGreyColor.withOpacity(0.5),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(
                      children: [
                        ScanView(
                          controller: scanController,
                          scanAreaScale: 0.7,
                          scanLineColor: kWhiteColor,
                          onCapture: (value) {
                            debugPrint('Barcode: $value');
                            showModalBottomSheet(
                              context: context,
                              builder: (context) => SizedBox(
                                height: 200,
                                child: Center(
                                  child: Column(
                                    children: [
                                      Text('Barcode: $value'),
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
                          },
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                scanController.toggleTorchMode();
                              });
                            },
                            iconSize: 60,
                            icon: Icon(
                              Icons.flash_on_rounded,
                              color: kWhiteColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
