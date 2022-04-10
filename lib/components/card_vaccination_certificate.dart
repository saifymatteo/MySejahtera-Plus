import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../helper/constant.dart';
import 'button_close.dart';
import 'button_vaccine_card.dart';
import 'tiles_item_row.dart';

class CardVaccinationCertificate extends StatelessWidget {
  const CardVaccinationCertificate({
    Key? key,
    required this.name,
    required this.idNumber,
    required this.dose1Date,
    required this.dose1Batch,
    required this.dose1Manufacturer,
    required this.dose1Location,
    required this.dose2Date,
    required this.dose2Batch,
    required this.dose2Manufacturer,
    required this.dose2Location,
    required this.dose3Date,
    required this.dose3Batch,
    required this.dose3Manufacturer,
    required this.dose3Location,
  }) : super(key: key);

  final String name;
  final String idNumber;
  final String dose1Date;
  final String dose1Batch;
  final String dose1Manufacturer;
  final String dose1Location;
  final String dose2Date;
  final String dose2Batch;
  final String dose2Manufacturer;
  final String dose2Location;
  final String dose3Date;
  final String dose3Batch;
  final String dose3Manufacturer;
  final String dose3Location;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: kCertificateGold,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20, left: 5, right: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: MediaQuery.of(context).size.width / 6,
              image: const AssetImage('asset/images/coat_of_arm.png'),
            ),
            Text(
              'Covid-19 Vaccination',
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.headlineSmall,
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
                    debugPrint('onPressed: ButtonVaccineCard(\'Get Cert\')');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
