import 'package:flutter/material.dart';

class CheckInScreen extends StatelessWidget {
  const CheckInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.all(10),
      child: Column(
        children: [
          // TODO: Implement global variable for date.
          const Text(
            'January 30, Sunday',
            textAlign: TextAlign.left,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Check-in'),
              TextButton(
                onPressed: () {},
                child: const Text('History'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
