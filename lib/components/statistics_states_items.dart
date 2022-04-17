import 'package:flutter/material.dart';
import 'package:mysejahtera_plus/helper/constant.dart';

import 'card_statistics.dart';
import 'text_sub_title.dart';

class StatisticsStatesItems extends StatelessWidget {
  const StatisticsStatesItems({
    Key? key,
    required this.titleText,
    required this.topLeftColor,
    required this.topLeftHeader,
    required this.topLeftTotalText,
    required this.topLeftPlusOrMinus,
    required this.topLeftTodayText,
    required this.topLeftUpOrDown,
    required this.topLeftPercentage,
    required this.topLeftDate,
    required this.topRightColor,
    required this.topRightHeader,
    required this.topRightTotalText,
    required this.topRightPlusOrMinus,
    required this.topRightTodayText,
    required this.topRightUpOrDown,
    required this.topRightPercentage,
    required this.topRightDate,
    required this.bottomLeftColor,
    required this.bottomLeftHeader,
    required this.bottomLeftTotalText,
    required this.bottomLeftPlusOrMinus,
    required this.bottomLeftTodayText,
    required this.bottomLeftUpOrDown,
    required this.bottomLeftPercentage,
    required this.bottomLeftDate,
    required this.bottomRightColor,
    required this.bottomRightHeader,
    required this.bottomRightTotalText,
    required this.bottomRightPlusOrMinus,
    required this.bottomRightTodayText,
    required this.bottomRightUpOrDown,
    required this.bottomRightPercentage,
    required this.bottomRightDate,
  }) : super(key: key);

  final String titleText;

  final Color topLeftColor;
  final String topLeftHeader;
  final String topLeftTotalText;
  final IconData topLeftPlusOrMinus;
  final String topLeftTodayText;
  final IconData topLeftUpOrDown;
  final String topLeftPercentage;
  final String topLeftDate;

  final Color topRightColor;
  final String topRightHeader;
  final String topRightTotalText;
  final IconData topRightPlusOrMinus;
  final String topRightTodayText;
  final IconData topRightUpOrDown;
  final String topRightPercentage;
  final String topRightDate;

  final Color bottomLeftColor;
  final String bottomLeftHeader;
  final String bottomLeftTotalText;
  final IconData bottomLeftPlusOrMinus;
  final String bottomLeftTodayText;
  final IconData bottomLeftUpOrDown;
  final String bottomLeftPercentage;
  final String bottomLeftDate;

  final Color bottomRightColor;
  final String bottomRightHeader;
  final String bottomRightTotalText;
  final IconData bottomRightPlusOrMinus;
  final String bottomRightTodayText;
  final IconData bottomRightUpOrDown;
  final String bottomRightPercentage;
  final String bottomRightDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          margin: const EdgeInsets.fromLTRB(5, 15, 5, 15),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: kPrimarySwatch)),
          child: TextSubTitle(
            title: titleText,
            color: kPrimarySwatch,
          ),
        ),
        GridView.count(
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          crossAxisCount: 2,
          childAspectRatio: 4 / 4,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            CardStatistics(
              header: topLeftHeader,
              totalText: topLeftTotalText,
              plusOrMinus: topLeftPlusOrMinus,
              numberTodayText: topLeftTodayText,
              iconArrow: topLeftUpOrDown,
              percentage: topLeftPercentage,
              date: topLeftDate,
              cardColor: topLeftColor,
            ),
            CardStatistics(
              header: topRightHeader,
              totalText: topRightTotalText,
              plusOrMinus: topRightPlusOrMinus,
              numberTodayText: topRightTodayText,
              iconArrow: topRightUpOrDown,
              percentage: topRightPercentage,
              date: topRightDate,
              cardColor: topRightColor,
            ),
            CardStatistics(
              header: bottomLeftHeader,
              totalText: bottomLeftTotalText,
              plusOrMinus: bottomLeftPlusOrMinus,
              numberTodayText: bottomLeftTodayText,
              iconArrow: bottomLeftUpOrDown,
              percentage: bottomLeftPercentage,
              date: bottomLeftDate,
              cardColor: bottomLeftColor,
            ),
            CardStatistics(
              header: bottomRightHeader,
              totalText: bottomRightTotalText,
              plusOrMinus: bottomRightPlusOrMinus,
              numberTodayText: bottomRightTodayText,
              iconArrow: bottomRightUpOrDown,
              percentage: bottomRightPercentage,
              date: bottomRightDate,
              cardColor: bottomRightColor,
            ),
          ],
        ),
      ],
    );
  }
}
