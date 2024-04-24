import 'package:flutter/material.dart';

class ExampleOneView extends StatefulWidget {
  const ExampleOneView({super.key});

  @override
  State<ExampleOneView> createState() => _ExampleOneViewState();
}

class _ExampleOneViewState extends State<ExampleOneView> {
  double value = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Example One Provider',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(value: value, onChanged: (value) {}),
        ],
      ),
    );
  }
}
