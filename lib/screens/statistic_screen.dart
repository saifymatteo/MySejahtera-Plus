import 'package:flutter/material.dart';
import 'package:mysejahtera_plus/helper/constant.dart';
import 'package:intl/intl.dart';

import '../components/text_title.dart';

class StatisticScreen extends StatelessWidget {
  StatisticScreen({Key? key}) : super(key: key);

  // TODO: Rework on the date later
  final DateTime currentDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
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
              title: 'Statistics',
            ),
          ],
        ),
        Row(
          children: [],
        ),
        // GridView(gridDelegate: gridDelegate)
      ],
    );
  }
}
