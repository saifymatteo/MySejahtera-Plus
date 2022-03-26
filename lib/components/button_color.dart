import 'package:flutter/material.dart';
import '../helper/constant.dart';

class ButtonColor extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ButtonColor({Key? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: TextButton(
        onPressed: onPressed,
        child: Text(text),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(kPrimarySwatch),
          foregroundColor: MaterialStateProperty.all(kWhiteColor),
          padding: MaterialStateProperty.all(
            const EdgeInsets.only(left: 10, right: 10),
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
