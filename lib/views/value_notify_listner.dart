// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class NotifyListnerView extends StatelessWidget {
  NotifyListnerView({super.key});

  ValueNotifier<int> counter = ValueNotifier<int>(0);
  ValueNotifier<bool> toggle = ValueNotifier<bool>(true);

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //  Example One
          ValueListenableBuilder(
              valueListenable: toggle,
              builder: (context, value, child) {
                return TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: InkWell(
                          onTap: () {
                            toggle.value = !toggle.value;
                          },
                          child: Icon(toggle.value
                              ? Icons.visibility_off_outlined
                              : Icons.visibility)),
                      hintText: 'Password'),
                  obscureText: toggle.value,
                );
              }),
          // Example One
          Center(
              child: ValueListenableBuilder(
            valueListenable: counter,
            builder: (context, value, child) {
              return Text(
                counter.value.toString(),
                style: const TextStyle(fontSize: 50),
              );
            },
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          counter.value++;
          print(counter.value.toString());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
