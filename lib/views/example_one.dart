import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_leaning/provider/example_one_provider.dart';

class ExampleOneView extends StatefulWidget {
  const ExampleOneView({super.key});

  @override
  State<ExampleOneView> createState() => _ExampleOneViewState();
}

class _ExampleOneViewState extends State<ExampleOneView> {
  @override
  Widget build(BuildContext context) {
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
          Consumer<ExampleOneProvider>(builder: (context, value, child) {
            return Slider(
                min: 0,
                max: 1,
                value: value.value,
                onChanged: (val) {
                  value.setValue(val);
                });
          }),
          Consumer<ExampleOneProvider>(builder: (context, value, child) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(value.value)),
                    height: 100,
                    child: const Center(child: Text('Container 1')),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.red.withOpacity(value.value)),
                    height: 100,
                    child: const Center(child: Text('Container 2')),
                  ),
                )
              ],
            );
          }),
        ],
      ),
    );
  }
}
