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
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
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
            child: Text(counterProvider.counter.toString()),
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
