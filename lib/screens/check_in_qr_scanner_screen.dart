import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import 'package:mysejahtera_plus/components/button_close.dart';
import 'package:mysejahtera_plus/components/button_color.dart';
import 'package:mysejahtera_plus/helper/check_in_icons_icons.dart';
import 'package:mysejahtera_plus/helper/constant.dart';
import 'package:mysejahtera_plus/helper/name_initial.dart';
import 'package:mysejahtera_plus/screens/check_in_fail_screen.dart';

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
                          onDetect: (barcode, args) async {
                            // Check for QR code
                            if (barcode.format == BarcodeFormat.qrCode) {
                              barcodeValue = barcode.rawValue!;
                              debugPrint('Barcode: $barcodeValue');

                              // Need to check for legit mySejahtera QR
                              // Example
                              // https://mysejahtera.malaysia.gov.my/qrscan?lId=5fdb011c21ef3075fa4168d1&eln=TXlLYW1wdXMgUmFkaW8=&formType=REGULAR&isExternal=false

                              if (barcode.rawValue!
                                  .contains('mysejahtera.malaysia.gov.my')) {
                                await scannerController.stop();
                                checkInQrBottomSheet(context);
                              } else {
                                await scannerController.stop();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CheckInFailScreen(
                                      scannerController: scannerController,
                                    ),
                                  ),
                                );
                              }
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
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image(
                image: const AssetImage('asset/images/bottom_divider.png'),
                width: MediaQuery.of(context).size.width / 7,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(top: 30, bottom: 10),
              child: Text(
                'Check-in with...',
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
                  CheckInNameListTile(name: 'Peter Parker'),
                  CheckInNameListTile(name: 'John Parker'),
                  CheckInNameListTile(name: 'Jennifer Parker'),
                  CheckInNameListTile(name: 'Katie Parker'),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: kDarkGreyColor.withOpacity(0.3),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(top: 15, bottom: 10),
              child: Text(
                'Check-out automatically after...',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  textStyle: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
            SizedBox(
              height: 190,
              child: ListView(
                children: const [
                  CheckOutTimeListTile(timeText: '15 minutes'),
                  CheckOutTimeListTile(timeText: '30 minutes'),
                  CheckOutTimeListTile(timeText: '60 minutes'),
                  CheckOutCustomListTile(text: 'Custom'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Card(
                elevation: 5,
                color: kPrimarySwatch,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                  onTap: () {
                    // TODO: Successfull check-in screen
                    Navigator.pop(context);
                  },
                  child: Center(
                    heightFactor: 1.4,
                    child: Text(
                      'Continue Check-In',
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
          ],
        ),
      ),
    );
  }
}

class CheckOutTimeListTile extends StatefulWidget {
  const CheckOutTimeListTile({
    Key? key,
    required this.timeText,
  }) : super(key: key);

  final String timeText;

  @override
  State<CheckOutTimeListTile> createState() => _CheckOutTimeListTileState();
}

class _CheckOutTimeListTileState extends State<CheckOutTimeListTile> {
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
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListTile(
        dense: true,
        title: Text(
          widget.text,
          style: GoogleFonts.poppins(
            textStyle: Theme.of(context).textTheme.titleMedium,
            fontWeight: FontWeight.w500,
          ),
        ),
        // TODO: Implement Custom check-out time
        onTap: () {},
        trailing: Padding(
          padding: const EdgeInsets.all(8),
          child: Icon(Icons.arrow_forward_ios_rounded, color: kPrimarySwatch),
        ),
      ),
    );
  }
}

// TODO: Change the StatefulWidget to BLoC
class CheckInNameListTile extends StatefulWidget {
  const CheckInNameListTile({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  State<CheckInNameListTile> createState() => _CheckInNameListTileState();
}

class _CheckInNameListTileState extends State<CheckInNameListTile> {
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
