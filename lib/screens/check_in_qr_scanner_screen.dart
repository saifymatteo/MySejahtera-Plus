import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import 'package:mysejahtera_plus/components/button_close.dart';
import 'package:mysejahtera_plus/components/button_color.dart';
import 'package:mysejahtera_plus/helper/check_in_icons_icons.dart';
import 'package:mysejahtera_plus/helper/constant.dart';
import 'package:mysejahtera_plus/helper/name_initial.dart';

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
              //! FIXME: REMOVE LATER
              ButtonColor(
                text: 'open bottomsheet',
                onPressed: () => checkInQrBottomSheet(context),
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
                              checkInQrBottomSheet(context);
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

  // TODO: Pass in checkbox value with BLoC and update state

  Future<dynamic> checkInQrBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (context) => Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image(
                image: const AssetImage('asset/images/bottom_divider.png'),
                width: MediaQuery.of(context).size.width / 7,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 10),
              child: Text(
                'Check-in with...',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  textStyle: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: SizedBox(
                height: 230,
                child: ListView(
                  children: const [
                    CheckInWithNameListTile(name: 'Peter Parker'),
                    CheckInWithNameListTile(name: 'John Parker'),
                    CheckInWithNameListTile(name: 'Jennifer Parker'),
                    CheckInWithNameListTile(name: 'Katie Parker'),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: kDarkGreyColor.withOpacity(0.3),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                'Check-out automatically after...',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  textStyle: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
            SizedBox(
              height: 230,
              child: ListView(
                children: const [
                  CheckOutWithTimeListTile(timeText: '15 minutes'),
                  CheckOutWithTimeListTile(timeText: '30 minutes'),
                  CheckOutWithTimeListTile(timeText: '60 minutes'),
                  CheckOutCustomListTile(text: 'Custom'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CheckOutWithTimeListTile extends StatefulWidget {
  const CheckOutWithTimeListTile({
    Key? key,
    required this.timeText,
  }) : super(key: key);

  final String timeText;

  @override
  State<CheckOutWithTimeListTile> createState() =>
      _CheckOutWithTimeListTileState();
}

class _CheckOutWithTimeListTileState extends State<CheckOutWithTimeListTile> {
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      dense: true,
      title: Text(
        widget.timeText,
        style: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.titleMedium,
          fontWeight: FontWeight.w500,
        ),
      ),
      controlAffinity: ListTileControlAffinity.trailing,
      value: checkboxValue,
      onChanged: (value) {
        setState(() {
          checkboxValue = value!;
        });
      },
    );
  }
}

class CheckOutCustomListTile extends StatefulWidget {
  const CheckOutCustomListTile({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  State<CheckOutCustomListTile> createState() => _CheckOutCustomListTileState();
}

class _CheckOutCustomListTileState extends State<CheckOutCustomListTile> {
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        widget.text,
        style: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.titleMedium,
          fontWeight: FontWeight.w500,
        ),
      ),
      controlAffinity: ListTileControlAffinity.trailing,
      value: checkboxValue,
      onChanged: (value) {
        setState(() {
          checkboxValue = value!;
        });
      },
    );
  }
}

// TODO: Change the StatefulWidget to BLoC
class CheckInWithNameListTile extends StatefulWidget {
  const CheckInWithNameListTile({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  State<CheckInWithNameListTile> createState() =>
      _CheckInWithNameListTileState();
}

class _CheckInWithNameListTileState extends State<CheckInWithNameListTile> {
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      secondary: CircleAvatar(
        child: Text(getInitials(widget.name)),
        foregroundColor: kWhiteColor,
        backgroundColor: kPrimarySwatch,
      ),
      title: Text(
        widget.name,
        style: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.titleMedium,
          fontWeight: FontWeight.w500,
        ),
      ),
      controlAffinity: ListTileControlAffinity.trailing,
      value: checkboxValue,
      onChanged: (value) {
        setState(() {
          checkboxValue = value!;
        });
      },
    );
  }
}
