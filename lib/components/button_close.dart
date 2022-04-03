import 'package:flutter/material.dart';

import '../helper/constant.dart';

class ButtonClose extends StatelessWidget {
  const ButtonClose({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: 40,
      height: 40,
      decoration: ShapeDecoration(
        shape: const CircleBorder(),
        color: kPrimarySwatch,
      ),
      child: IconButton(
        onPressed: onPressed,
        color: kWhiteColor,
        icon: const Icon(Icons.close),
      ),
    );
  }
}
