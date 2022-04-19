import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../helper/constant.dart';
import '../../helper/name_initial.dart';

// TODO: Change the StatefulWidget to BLoC
class CheckInNameListTile extends StatefulWidget {
  const CheckInNameListTile({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  State<CheckInNameListTile> createState() => _CheckInNameListTileState();
}

class _CheckInNameListTileState extends State<CheckInNameListTile> {
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      secondary: CircleAvatar(
        child: Text(getInitials(widget.name)),
        foregroundColor: kWhiteColor,
        backgroundColor: kPrimarySwatch,
      ),
      title: Text(
        widget.name,
        style: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.titleMedium,
          fontWeight: FontWeight.w500,
        ),
      ),
      controlAffinity: ListTileControlAffinity.trailing,
      value: checkboxValue,
      onChanged: (value) {
        setState(() {
          checkboxValue = value!;
        });
      },
    );
  }
}