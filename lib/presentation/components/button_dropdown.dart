import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../helper/constant.dart';

class ButtonDropDown extends StatefulWidget {
  const ButtonDropDown({
    Key? key,
    required this.dropdownItems,
    required this.initialValue,
  }) : super(key: key);

  final List<String> dropdownItems;
  final String initialValue;

  @override
  State<ButtonDropDown> createState() => _ButtonDropDownState();
}

class _ButtonDropDownState extends State<ButtonDropDown> {
  late String text;

  @override
  void initState() {
    text = widget.initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        hint: Text(text),
        value: text,
        icon: const Icon(Icons.keyboard_arrow_down_rounded),
        buttonHeight: 35,
        buttonDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: const Color(0xFFE6E6E6)),
          color: kDarkWhiteColor,
        ),
        buttonPadding: const EdgeInsets.only(left: 10, right: 10),
        dropdownWidth: 150,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        items: widget.dropdownItems
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ))
            .toList(),
        onChanged: (value) {
          setState(() {
            text = value as String;
          });
        },
      ),
    );
  }
}
