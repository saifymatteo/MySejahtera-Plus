import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../helper/constant.dart';
import '../screens/question_screen.dart';
import 'bottom_sheet_tools_and_services.dart';
import 'card_tools_and_services.dart';
import 'text_sub_title.dart';
import 'text_title.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({
    Key? key,
    required this.currentDate,
  }) : super(key: key);

  final DateTime currentDate;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 320,
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TODO: Implement global variable for date.
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                      DateFormat('MMMM d, EEEE').format(currentDate),
                      style: const TextStyle(color: kPrimarySwatch),
                    ),
                  ),
                  const Flexible(
                    flex: 2,
                    child: TextTitle(
                      title: 'MySejahtera',
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Flexible(
                    flex: 3,
                    child: TextSubTitle(title: 'Tools and Services'),
                  ),
                  Flexible(
                    child: TextButton(
                      onPressed: () {
                        toolsAndServicesBottomSheet(context);
                      },
                      child: Text(
                        'Show all',
                        style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.titleMedium,
                          color: kPrimarySwatch,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 3,
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const QuestionScreen(title: 'Status'),
                        ),
                      );
                    },
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
          ],
        ),
      ),
    );
  }
}
