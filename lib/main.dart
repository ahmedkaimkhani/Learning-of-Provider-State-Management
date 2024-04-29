import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_leaning/provider/counter_provider.dart';
import 'package:provider_leaning/provider/example_one_provider.dart';
import 'package:provider_leaning/provider/favourite_provider.dart';
import 'package:provider_leaning/provider/theme_changer_provider.dart';
import 'package:provider_leaning/views/dark_theme.dart';
import 'package:provider_leaning/views/value_notify_listner.dart';

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
        ChangeNotifierProvider(create: (context) => FavouriteItemProvider()),
        ChangeNotifierProvider(create: (context) => ThemeChangerProvider())
      ],
      child: Builder(builder: (BuildContext context) {
        final themeChanger = Provider.of<ThemeChangerProvider>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: themeChanger.themeMode,
          theme: ThemeData(
            brightness: Brightness.light,
            appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
          ),
          darkTheme: ThemeData(
              brightness: Brightness.dark,
              appBarTheme: const AppBarTheme(backgroundColor: Colors.purple),
              iconTheme: const IconThemeData(color: Colors.red)),
          title: 'Provider Learning',
          home: const NotifyListnerView(),
        );
      }),
    );
  }
}
