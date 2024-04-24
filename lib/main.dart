import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_leaning/provider/counter_provider.dart';
import 'package:provider_leaning/provider/example_one_provider.dart';
import 'package:provider_leaning/views/example_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterProvider()),
        ChangeNotifierProvider(create: (context) => ExampleOneProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: const AppBarTheme(backgroundColor: Colors.blue)),
        title: 'Provider Learning',
        home: const ExampleOneView(),
      ),
    );
  }
}
