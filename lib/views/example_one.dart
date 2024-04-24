import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_leaning/provider/example_one_provider.dart';

class ExampleOneView extends StatefulWidget {
  const ExampleOneView({super.key});

  @override
  State<ExampleOneView> createState() => _ExampleOneViewState();
}

class _ExampleOneViewState extends State<ExampleOneView> {
  double value = 1.0;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ExampleOneProvider>(context);

    print('build');
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
          Slider(
              min: 0,
              max: 1,
              value: provider.value,
              onChanged: (val) {
                print(value);
                value = val;
                setState(() {});
              }),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration:
                      BoxDecoration(color: Colors.green.withOpacity(value)),
                  height: 100,
                  child: const Center(child: Text('Container 1')),
                ),
              ),
              Expanded(
                child: Container(
                  decoration:
                      BoxDecoration(color: Colors.red.withOpacity(value)),
                  height: 100,
                  child: const Center(child: Text('Container 2')),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
