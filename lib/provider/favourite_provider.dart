import 'package:flutter/material.dart';

class FavouriteItemProvider with ChangeNotifier {
  final List<int> _selectedItems = [];

  List<int> get selectedItems => _selectedItems;

  void addItems(value) {
    selectedItems.add(value);
  }
}
