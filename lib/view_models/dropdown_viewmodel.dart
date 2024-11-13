import 'package:flutter/material.dart';

class DropdownViewModel extends ChangeNotifier {
  String? _selectedItem;

  String? get selectedItem => _selectedItem;

  final List<String> _items = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

  List<String> get items => _items;

  void setSelectedItem(String? item) {
    _selectedItem = item;
    notifyListeners();
  }
}
