import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../components/button_close.dart';
import '../helper/constant.dart';
import '../components/text_title.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../components/button_color.dart';
import '../components/button_vaccine_card.dart';
import '../components/card_profile.dart';
import '../components/tiles_item_row.dart';

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
                    text: 'Refresh',
                    onPressed: () {
                      debugPrint('onPressed: ButtonColor(\'Refresh\')');
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
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Column(
                    children: [
                      Container(
                        height: 110,
                        width: double.infinity,
                        color: kRiskStatusGreen,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Risk Status',
                                style: GoogleFonts.poppins(
                                  color: kWhiteColor,
                                  textStyle:
                                      Theme.of(context).textTheme.headlineSmall,
                                  height: 0.7,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'As of $date',
                                style: TextStyle(
                                    color: kWhiteColor.withOpacity(0.7)),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                symptom,
                                style: GoogleFonts.poppins(
                                  color: kWhiteColor,
                                  textStyle:
                                      Theme.of(context).textTheme.titleLarge,
                                  fontWeight: FontWeight.w600,
                                  height: 0.7,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          children: [
                            QrImage(
                              data:
                                  'https://mysejahtera.malaysia.gov.my/intro/',
                              size: MediaQuery.of(context).size.width / 1.5,
                            ),
                            Text(
                              'MySejahtera Profile QR Code',
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.bodySmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Card(
                  elevation: 5,
                  color: kCertificateGold,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 20, left: 5, right: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          width: MediaQuery.of(context).size.width / 6,
                          image:
                              const AssetImage('asset/images/coat_of_arm.png'),
                        ),
                        Text(
                          'Covid-19 Vaccination',
                          style: GoogleFonts.poppins(
                            textStyle:
                                Theme.of(context).textTheme.headlineSmall,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Digital Certificate',
                          style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.titleMedium,
                            color: kDarkGreyColor.withOpacity(0.5),
                            height: 1.2,
                          ),
                        ),
                        const SizedBox(height: 10),
                        ItemRowListTiles(
                          headLeft: 'NAME',
                          itemLeft: name,
                          headRight: 'I/C NO',
                          itemRight: idNumber,
                        ),
                        const Divider(indent: 10, endIndent: 10),
                        ItemRowListTiles(
                          headLeft: 'DOSE 1',
                          itemLeft: dose1Date,
                          headRight: 'BATCH',
                          itemRight: dose1Batch,
                        ),
                        ItemRowListTiles(
                          headLeft: 'MANUFACTURER',
                          itemLeft: dose1Manufacturer,
                          headRight: 'LOCATION',
                          itemRight: dose1Location,
                        ),
                        const Divider(indent: 10, endIndent: 10),
                        ItemRowListTiles(
                          headLeft: 'DOSE 2',
                          itemLeft: dose2Date,
                          headRight: 'BATCH',
                          itemRight: dose2Batch,
                        ),
                        ItemRowListTiles(
                          headLeft: 'MANUFACTURER',
                          itemLeft: dose2Manufacturer,
                          headRight: 'LOCATION',
                          itemRight: dose2Location,
                        ),
                        const Divider(indent: 10, endIndent: 10),
                        ItemRowListTiles(
                          headLeft: 'DOSE 3',
                          itemLeft: dose3Date,
                          headRight: 'BATCH',
                          itemRight: dose3Batch,
                        ),
                        ItemRowListTiles(
                          headLeft: 'MANUFACTURER',
                          itemLeft: dose3Manufacturer,
                          headRight: 'LOCATION',
                          itemRight: dose3Location,
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ButtonVaccineCard(
                              icon: Icons.qr_code_scanner_rounded,
                              text: 'Show QR',
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => SimpleDialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    title: const Text(
                                      'Vaccine Certificate QR',
                                      textAlign: TextAlign.center,
                                    ),
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        width: 300,
                                        height: 300,
                                        child: QrImage(
                                          data:
                                              'https://mysejahtera.malaysia.gov.my/intro/',
                                          size: 300,
                                        ),
                                      ),
                                      const SizedBox(height: 15),
                                      ButtonClose(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                            const SizedBox(width: 20),
                            ButtonVaccineCard(
                              icon: Icons.picture_as_pdf_rounded,
                              text: 'Get Cert',
                              onPressed: () {
                                debugPrint(
                                    'onPressed: ButtonVaccineCard(\'Get Cert\')');
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
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
