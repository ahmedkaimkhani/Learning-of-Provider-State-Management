import 'dart:async';

import 'package:flutter/material.dart';

class WhyProvider extends StatefulWidget {
  const WhyProvider({super.key});

  @override
  State<WhyProvider> createState() => _WhyProviderState();
}

class _WhyProviderState extends State<WhyProvider> {
  int counter = 0;
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      counter++;
      // print(counter);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    // print('Build' + counter.toString());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Why Provider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // i just want to rebuild this time and counter value but we use setstate when we use set state the
          // whole screen widgets rebuld again its cost ram and slow our app that's why we should use to provider
          Center(
            child: Text(
              "${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}",
              style: const TextStyle(fontSize: 50),
            ),
          ),
          Center(
            child: Text(
              counter.toString(),
              style: const TextStyle(fontSize: 50),
            ),
          )
        ],
      ),
    );
  }
}
