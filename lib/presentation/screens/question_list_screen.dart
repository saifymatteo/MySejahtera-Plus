import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionListScreen extends StatelessWidget {
  const QuestionListScreen({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Center(
                  heightFactor: 1.9,
                  child: Text(
                    title,
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.headline6,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    iconSize: 40,
                    icon: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
}
}
