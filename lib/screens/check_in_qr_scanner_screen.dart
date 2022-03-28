import 'package:flutter/material.dart';
import 'package:mysejahtera_plus/components/button_close.dart';
import 'package:mysejahtera_plus/components/button_color.dart';
import 'package:mysejahtera_plus/helper/check_in_icons_icons.dart';
import 'package:mysejahtera_plus/helper/constant.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class CheckInQrScannerScreen extends StatefulWidget {
  const CheckInQrScannerScreen({Key? key, required this.onPressed})
      : super(key: key);

  final VoidCallback onPressed;

  @override
  State<CheckInQrScannerScreen> createState() => _CheckInQrScannerScreenState();
}

class _CheckInQrScannerScreenState extends State<CheckInQrScannerScreen> {
  MobileScannerController scannerController = MobileScannerController();
  String barcodeValue = 'unknown';

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
                        MobileScanner(
                          allowDuplicates: false,
                          controller: scannerController,
                          onDetect: (barcode, args) {
                            // Check for QR code
                            if (barcode.format == BarcodeFormat.qrCode) {
                              barcodeValue = barcode.rawValue!;
                              debugPrint('Barcode: $barcodeValue');
                              showModalBottomSheet(
                                context: context,
                                builder: (context) => SizedBox(
                                  height: 200,
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Text('Barcode: $barcodeValue'),
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
                          },
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: const Image(
                            fit: BoxFit.cover,
                            width: double.infinity,
                            image: AssetImage('asset/images/overlay.png'),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: IconButton(
                              onPressed: () {
                                scannerController.toggleTorch();
                              },
                              iconSize: 50,
                              // TODO: Probably change ValueListener with BLoC later
                              icon: ValueListenableBuilder(
                                valueListenable: scannerController.torchState,
                                builder: (context, state, child) {
                                  switch (state as TorchState) {
                                    case TorchState.off:
                                      return Icon(
                                        // Icons.flash_on_rounded,
                                        Icons.flashlight_on_rounded,
                                        color: kWhiteColor,
                                      );
                                    case TorchState.on:
                                      return Icon(
                                        // Icons.flash_off_rounded,
                                        Icons.flashlight_off_rounded,
                                        color: kWhiteColor.withOpacity(0.7),
                                      );
                                  }
                                },
                              ),
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
