import 'package:flutter/material.dart';
import 'package:provider_leaning/views/counter_view.dart';
import 'package:provider_leaning/why_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.blue)),
      title: 'Provider Learning',
      home: const CounterView(),
    );
  }
}
