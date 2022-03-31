import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import 'package:mysejahtera_plus/components/button_color.dart';
import 'package:mysejahtera_plus/helper/constant.dart';

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
            children: [
              Icon(
                Icons.warning_rounded,
                color: kPrimarySwatch,
              ),
              const Text('Invalid QR'),
              ButtonColor(
                text: 'Close',
                onPressed: () async {
                  scannerController.start();
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
