import 'package:flutter/material.dart';
import 'package:mysejahtera_plus/helper/constant.dart';

class ButtonOutline extends StatelessWidget {
  const ButtonOutline({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: OutlinedButton(
        onPressed: () {},
        child: Text(
          text,
        ),
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(kDarkGreyColor),
          side: MaterialStateProperty.all(
            BorderSide(color: kPrimarySwatch),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        ),
      ),
    );
  }
}
