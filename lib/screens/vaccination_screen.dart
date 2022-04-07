import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mysejahtera_plus/components/text_title.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../components/button_close.dart';
import '../components/tiles_item_row.dart';
import '../helper/constant.dart';

class VaccinationScreen extends StatelessWidget {
  const VaccinationScreen({
    Key? key,
    required this.name,
    required this.idNumber,
    this.dose1Manufacturer = '-',
    this.dose1Date = '-',
    this.dose1Batch = '-',
    this.dose2Manufacturer = '-',
    this.dose2Date = '-',
    this.dose2Batch = '-',
    this.dose3Manufacturer = '-',
    this.dose3Date = '-',
    this.dose3Batch = '-',
    this.dose1Location = '-',
    this.dose2Location = '-',
    this.dose3Location = '-',
  }) : super(key: key);

  final String name;
  final String idNumber;
  final String dose1Manufacturer;
  final String dose1Date;
  final String dose1Batch;
  final String dose1Location;
  final String dose2Manufacturer;
  final String dose2Date;
  final String dose2Batch;
  final String dose2Location;
  final String dose3Manufacturer;
  final String dose3Date;
  final String dose3Batch;
  final String dose3Location;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: ButtonClose(onPressed: () => Navigator.pop(context)),
              ),
              const TextTitle(title: 'Vaccination Certificate'),
              const SizedBox(height: 5),
              Expanded(
                child: Card(
                  elevation: 10,
                  color: kDarkWhiteColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 5, right: 5),
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                width: MediaQuery.of(context).size.width / 6,
                                image: const AssetImage(
                                    'asset/images/coat_of_arm.png'),
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
                                  textStyle:
                                      Theme.of(context).textTheme.titleMedium,
                                  color: kDarkGreyColor.withOpacity(0.5),
                                  height: 1.2,
                                ),
                              ),
                            ],
                          ),
                        ),
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
                        const Divider(indent: 10, endIndent: 10),
                        Center(
                          child: QrImage(
                            data: 'https://mysejahtera.malaysia.gov.my/intro/',
                            size: 150,
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
