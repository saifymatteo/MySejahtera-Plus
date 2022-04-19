import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../helper/constant.dart';
import '../components/button_color.dart';
import '../components/card_profile.dart';
import '../components/card_risk_status_qr.dart';
import '../components/card_vaccination_certificate.dart';
import '../components/text_title.dart';
import 'profile_settings_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // TODO: Rework on the date later
  final DateTime currentDate = DateTime.now();

  final String dose1Batch = 'A001';
  final String dose1Date = '8/12/2021';
  final String dose1Location = 'Staidum Bukit Jalil';
  final String dose1Manufacturer = 'Pfizer-BioNTech';
  final String dose2Batch = 'A030';
  final String dose2Date = '31/12/2021';
  final String dose2Location = 'Stadium Bukit Jalil';
  final String dose2Manufacturer = 'Pfizer-BioNTech';
  final String dose3Batch = '-';
  final String dose3Date = '-';
  final String dose3Location = '-';
  final String dose3Manufacturer = '-';
  final String email = 'anthonyparker@mail.com';
  final String idNumber = '990808-08-8899';
  final String location = 'Selangor';
  final String name = 'Anthony Parker';
  final String date = '30 Jan, 2022, 8:30 AM';
  final String symptom = 'Low Risk No Symptom';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // TODO: Implement global variable for date.
              Text(
                DateFormat('MMMM d, EEEE').format(currentDate),
                style: const TextStyle(color: kPrimarySwatch),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TextTitle(
                    title: 'Profile',
                  ),
                  ButtonColor(
                    text: 'Settings',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfileSettingScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                CardProfile(
                  name: name,
                  email: email,
                  idNumber: idNumber,
                  location: location,
                ),
                const SizedBox(height: 10),
                CardRiskStatusQR(
                  date: date,
                  symptom: symptom,
                ),
                const SizedBox(height: 10),
                CardVaccinationCertificate(
                  name: name,
                  idNumber: idNumber,
                  dose1Date: dose1Date,
                  dose1Batch: dose1Batch,
                  dose1Manufacturer: dose1Manufacturer,
                  dose1Location: dose1Location,
                  dose2Date: dose2Date,
                  dose2Batch: dose2Batch,
                  dose2Manufacturer: dose2Manufacturer,
                  dose2Location: dose2Location,
                  dose3Date: dose3Date,
                  dose3Batch: dose3Batch,
                  dose3Manufacturer: dose3Manufacturer,
                  dose3Location: dose3Location,
                ),
                const SizedBox(height: 10)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
