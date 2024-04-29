import 'package:flutter/material.dart';

class NotifyListnerView extends StatelessWidget {
  const NotifyListnerView({super.key});

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Value Notify Listner',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Notify Listner',
              style: TextStyle(fontSize: 30),
            ),
          )
        ],
      ),
    );
  }
}
