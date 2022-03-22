import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:mysejahtera_plus/cubit/counter_cubit.dart';
import 'screens/counter_screen.dart';
import 'helper/screen_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'MySejahtera Plus',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme:
                GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
        routes: {
          Screens.home: (context) => const ChooseScreen(),
          Screens.counterScreen: (context) => const CounterScreen(),
        },
      ),
    );
  }
}

class ChooseScreen extends StatelessWidget {
  const ChooseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () =>
                Navigator.pushNamed(context, Screens.counterScreen),
            child: const Text('Counter Screen'),
          ),
          const ElevatedButton(
            onPressed: null,
            child: Text('null'),
          )
        ],
      ),
    );
  }
}
