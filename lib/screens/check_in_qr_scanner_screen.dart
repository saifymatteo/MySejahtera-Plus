import 'package:flutter/material.dart';

class CheckInQrScannerScreen extends StatelessWidget {
  const CheckInQrScannerScreen({Key? key, required this.onPressed}) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Icon(Icons.close),
            Text('QR Scanner'),
            TextButton(onPressed: onPressed, child: Text('Close'))
          ],
        ),
      ),
    );
  }
}
