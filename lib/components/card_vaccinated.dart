import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helper/constant.dart';

class CardVaccinated extends StatelessWidget {
  const CardVaccinated({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Card(
        color: kVaccinatedFull,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 140,
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'asset/images/vaccine_image.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    foregroundDecoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          kVaccinatedFull.withOpacity(0.3),
                          kVaccinatedFullDark.withOpacity(0.8),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '30 days ago',
                              style: GoogleFonts.poppins(
                                color: kWhiteColor,
                                textStyle:
                                    Theme.of(context).textTheme.headline5,
                              ),
                            ),
                            Icon(
                              Icons.info,
                              color: kWhiteColor,
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Partially Vaccinated',
                              style: GoogleFonts.poppins(
                                color: kWhiteColor,
                                textStyle:
                                    Theme.of(context).textTheme.headline5,
                                height: 0.8,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Completed 1st dose on 31/12/2021',
                              style: TextStyle(
                                color: kWhiteColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    'Anthony Parker',
                    style: TextStyle(color: kWhiteColor),
                  ),
                  Text(
                    'anthonyparker@mail.com',
                    style: TextStyle(color: kWhiteColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
