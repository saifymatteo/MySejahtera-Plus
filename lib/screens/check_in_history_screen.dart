import 'package:flutter/material.dart';

class CheckInHistoryScreen extends StatelessWidget {
  const CheckInHistoryScreen({Key? key, required this.onPressed}) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Icon(Icons.close),
            Text('History'),
            TextButton(onPressed: onPressed, child: Text('Close'))
          ],
        ),
      ),
    );
  }
}
