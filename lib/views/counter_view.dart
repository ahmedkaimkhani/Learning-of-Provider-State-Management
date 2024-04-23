import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_leaning/provider/counter_provider.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  @override
  void initState() {
    super.initState();
    final counterProvider =
        Provider.of<CounterProvider>(context, listen: false);
    Timer.periodic(const Duration(seconds: 2), (timer) {
      counterProvider.setCounter();
    });
  }

  @override
  Widget build(BuildContext context) {
    final counterProvider =
        Provider.of<CounterProvider>(context, listen: false);
    print('build');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Provider Counter'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Consumer<CounterProvider>(builder: (context, value, child) {
              print(
                  'only this widget build'); // only this widget build when you use cosumer widget in provider
              return Text(
                value.counter.toString(),
                style: const TextStyle(fontSize: 50),
              );
            }),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterProvider.setCounter();
        },
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
