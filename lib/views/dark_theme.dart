import 'package:flutter/material.dart';

class DarkThemeView extends StatefulWidget {
  const DarkThemeView({super.key});

  @override
  State<DarkThemeView> createState() => _DarkThemeViewState();
}

class _DarkThemeViewState extends State<DarkThemeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Dark Theme Provider',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
