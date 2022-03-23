import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'helper/constant.dart';

import 'screens/home_screen.dart';
import 'screens/statistic_screen.dart';
import 'screens/check_in_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MySejahtera Plus',
      theme: ThemeData(
          primarySwatch: kPrimarySwatch,
          textTheme:
              GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
      home: const MainComponent(),
    );
  }
}

class MainComponent extends StatefulWidget {
  const MainComponent({Key? key}) : super(key: key);

  @override
  State<MainComponent> createState() => _MainComponentState();
}

class _MainComponentState extends State<MainComponent> {
  int screenIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenOptions.elementAt(screenIndex),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SalomonBottomBar(
          currentIndex: screenIndex,
          onTap: (index) => setState(() => screenIndex = index),
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text('Home'),
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.assessment),
              title: const Text('Statistics'),
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.qr_code),
              title: const Text('Check-In'),
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text('Profile'),
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> screenOptions = <Widget>[
  const HomeScreen(),
  const StatisticScreen(),
  const CheckInScreen(),
  const ProfileScreen(),
];
