import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:mysejahtera_plus/cubit/counter_cubit.dart';
import 'package:mysejahtera_plus/helper/screen_routes.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Your current number:',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          BlocConsumer<CounterCubit, CounterState>(
            listener: (context, state) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: state.wasIncremented
                      ? const Text('Incremented!')
                      : const Text('Decremented!'),
                  duration: const Duration(seconds: 1),
                ),
              );
            },
            builder: (context, state) {
              return BlocBuilder<CounterCubit, CounterState>(
                builder: (context, state) {
                  return Text(
                    '${state.counterValue}',
                    style: Theme.of(context).textTheme.headline2,
                  );
                },
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).increment();
                },
                child: const Icon(Icons.add),
              ),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).decrement();
                },
                child: const Icon(Icons.remove),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Screens.home);
                },
                child: const Text('Back to Home'),
              )
            ],
          )
        ],
      ),
    );
  }
}
