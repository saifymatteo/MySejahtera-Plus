import 'package:flutter/material.dart';
import 'package:mysejahtera_plus/components/text_sub_title.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../components/button_close.dart';

class ProfileVaccinationQRScreen extends StatelessWidget {
  const ProfileVaccinationQRScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextSubTitle(title: 'Vaccine Certificate QR'),
              const SizedBox(height: 50),
              QrImage(
                data: 'https://mysejahtera.malaysia.gov.my/intro/',
                size: MediaQuery.of(context).size.width / 1.3,
              ),
              const SizedBox(height: 50),
              ButtonClose(onPressed: () {
                Navigator.pop(context);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
