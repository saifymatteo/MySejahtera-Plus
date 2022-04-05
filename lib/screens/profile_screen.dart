import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mysejahtera_plus/helper/constant.dart';
import 'package:mysejahtera_plus/components/text_title.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({ Key? key }) : super(key: key);

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
                title: 'Profile',
              ),
            ],
          ),
        ],
      ),
    );
  }
}