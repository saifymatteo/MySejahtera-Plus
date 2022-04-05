import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:mysejahtera_plus/helper/constant.dart';
import 'package:mysejahtera_plus/components/text_title.dart';

import '../components/button_card_activity_feed.dart';
import '../components/card_tools_and_services.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  // TODO: Rework on the date later
  final DateTime currentDate = DateTime.now();

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
                style: TextStyle(color: kPrimarySwatch),
              ),
              const TextTitle(
                title: 'MySejahtera',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tools and Services',
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.titleLarge,
                  color: kDarkGreyColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Show all',
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.titleMedium,
                    color: kPrimarySwatch,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 210,
            child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              childAspectRatio: 5 / 4,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                CardToolsAndServices(
                  text: 'Covid-19\nSelf Test',
                  onTap: () {},
                ),
                CardToolsAndServices(
                  text: 'Covid-19\nVaccination',
                  onTap: () {},
                ),
                CardToolsAndServices(
                  text: 'Covid-19\nHotspots',
                  onTap: () {},
                ),
                CardToolsAndServices(
                  text: 'Health\nFacilities',
                  onTap: () {},
                ),
                CardToolsAndServices(
                  text: 'Healthcare\nSupport',
                  onTap: () {},
                ),
                CardToolsAndServices(
                  text: 'Manage\nDependents',
                  onTap: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              'Covid-19 Latest News',
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.titleLarge,
                color: kDarkGreyColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                // Stream data post from this page
                // https://www.facebook.com/CPRCKebangsaanKKM/
                ButtonCardActivityFeed(
                  postTitle: 'Malaysia Covid-19 cases drop 20% in past week',
                  source: 'CPRC KKM',
                  date: '30 Jan 2022',
                  postTime: '1 hours ago',
                ),
                ButtonCardActivityFeed(
                  postTitle: 'Malaysia Covid-19 cases drop 20% in past week',
                  source: 'CPRC KKM',
                  date: '30 Jan 2022',
                  postTime: '1 hours ago',
                ),
                ButtonCardActivityFeed(
                  postTitle: 'Malaysia Covid-19 cases drop 20% in past week',
                  source: 'CPRC KKM',
                  date: '30 Jan 2022',
                  postTime: '1 hours ago',
                ),
                ButtonCardActivityFeed(
                  postTitle: 'Malaysia Covid-19 cases drop 20% in past week',
                  source: 'CPRC KKM',
                  date: '30 Jan 2022',
                  postTime: '1 hours ago',
                ),
                ButtonCardActivityFeed(
                  postTitle: 'Malaysia Covid-19 cases drop 20% in past week',
                  source: 'CPRC KKM',
                  date: '30 Jan 2022',
                  postTime: '1 hours ago',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}