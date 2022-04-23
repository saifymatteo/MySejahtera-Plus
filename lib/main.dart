import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

// import 'package:device_preview/device_preview.dart';

import 'helper/constant.dart';
import 'helper/pageview_keepalive.dart';
import 'presentation/screens/check_in_screen.dart';
import 'presentation/screens/home_screen.dart';
import 'presentation/screens/profile_screen.dart';
import 'presentation/screens/statistic_screen.dart';

Future<void> main() async {
  // Need to specify your own environment variables to use API / Token key
  await dotenv.load(fileName: 'asset/.env');
  runApp(const MyApp());
  //! TODO: Remove device preview later
  // runApp(DevicePreview(builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget!),
        maxWidth: 1000,
        minWidth: 400,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(400, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
        ],
      ),
      title: 'MySejahtera Plus',
      // useInheritedMediaQuery: true,
      // locale: DevicePreview.locale(context),
      theme: ThemeData(
          primarySwatch: kPrimarySwatchTheme,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
          unselectedWidgetColor: kPrimarySwatch),
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
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: screenIndex);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: pageController,
          children: screenOptions,
          onPageChanged: (index) {
            setState(() {
              screenIndex = index;
            });
          },
        ),
      ),
      bottomNavigationBar: Material(
        elevation: 5,
        child: Container(
          padding:
              const EdgeInsets.only(top: 8.0, left: 15, right: 15, bottom: 10),
          child: SalomonBottomBar(
            currentIndex: screenIndex,
            onTap: (index) {
              setState(() {
                screenIndex = index;
                if (pageController.hasClients) {
                  pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                }
              });
            },
            items: [
              SalomonBottomBarItem(
                icon: const Icon(Icons.home_outlined),
                title: const Text('Home'),
                activeIcon: const Icon(Icons.home),
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.assessment_outlined),
                title: const Text('Statistics'),
                activeIcon: const Icon(Icons.assessment),
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.qr_code_outlined),
                title: const Text('Check-In'),
                activeIcon: const Icon(Icons.qr_code),
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.person_outline),
                title: const Text('Profile'),
                activeIcon: const Icon(Icons.person),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> screenOptions = <Widget>[
  KeepAlivePage(child: HomeScreen()),
  const KeepAlivePage(child: StatisticScreen()),
  KeepAlivePage(child: CheckInScreen()),
  const KeepAlivePage(child: ProfileScreen()),
];

