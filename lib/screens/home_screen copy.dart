import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../components/bottom_sheet_tools_and_services.dart';
import '../helper/constant.dart';
import '../components/text_title.dart';

import '../components/button_card_activity_feed.dart';
import '../components/card_tools_and_services.dart';
import '../components/text_sub_title.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  // TODO: Rework on the date later
  final DateTime currentDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: kDarkGreyColor.withOpacity(0),
            expandedHeight: 360,
            flexibleSpace: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TODO: Implement global variable for date.
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          DateFormat('MMMM d, EEEE').format(currentDate),
                          style: const TextStyle(color: kPrimarySwatch),
                        ),
                      ),
                      const Expanded(
                        flex: 2,
                        child: TextTitle(
                          title: 'Home',
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                          flex: 3,
                          child: TextSubTitle(title: 'Tools and Services')),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            toolsAndServicesBottomSheet(context);
                          },
                          child: Text(
                            'Show all',
                            style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.titleMedium,
                              color: kPrimarySwatch,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    childAspectRatio: 5 / 5.9,
                    scrollDirection: Axis.horizontal,
                    children: [
                      CardToolsAndServices(
                        text: 'Covid-19\nSelf Test',
                        assetImage: kIconSelfTest,
                        onTap: () {},
                      ),
                      CardToolsAndServices(
                        text: 'Covid-19\nVaccination',
                        assetImage: kIconVaccine,
                        onTap: () {},
                      ),
                      CardToolsAndServices(
                        text: 'Covid-19\nHotspots',
                        assetImage: kIconHotspot,
                        onTap: () {},
                      ),
                      CardToolsAndServices(
                        text: 'Health\nFacilities',
                        assetImage: kIconHealthFacilities,
                        onTap: () {},
                      ),
                      CardToolsAndServices(
                        text: 'Healthcare\nSupport',
                        assetImage: kIconHealthSupport,
                        onTap: () {},
                      ),
                      CardToolsAndServices(
                        text: 'Manage\nDependents',
                        assetImage: kIconDependent,
                        onTap: () {},
                      ),
                      CardToolsAndServices(
                        text: 'Covid-19\nRisk Status',
                        assetImage: kIconRiskStatus,
                        onTap: () {},
                      ),
                      CardToolsAndServices(
                        text: 'Behavioural\nRisk',
                        assetImage: kIconBehavior,
                        onTap: () {},
                      ),
                      CardToolsAndServices(
                        text: 'Digital\nHealthcare',
                        assetImage: kIconDigitalHealth,
                        onTap: () {},
                      ),
                      CardToolsAndServices(
                        text: 'From\nTravelling',
                        assetImage: kIconTravel,
                        onTap: () {},
                      ),
                      CardToolsAndServices(
                        text: 'Additional\nResources',
                        assetImage: kIconResources,
                        onTap: () {},
                      ),
                      CardToolsAndServices(
                        text: 'SOP\nGuideline',
                        assetImage: kIconSOP,
                        onTap: () {},
                      ),
                      CardToolsAndServices(
                        text: 'Helpdesk\nCentre',
                        assetImage: kIconHelpdesk,
                        onTap: () {},
                      ),
                      CardToolsAndServices(
                        text: 'Frequently\nAsk Question',
                        assetImage: kIconFAQ,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: TextSubTitle(title: 'Covid-19 Latest News'),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              const [
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
