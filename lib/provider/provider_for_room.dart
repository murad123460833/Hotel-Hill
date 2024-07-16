import 'package:flutter/material.dart';

class Provider_for_room extends ChangeNotifier {
  List<int> _selectedIteam = [];
  List<int> get selectedIteam => _selectedIteam;
  List<int> _total = [];

  List<int> get total => _total;

  void ad(int val) {
    _selectedIteam.add(val);
    notifyListeners();
  }

  void rm(int val) {
    _selectedIteam.remove(val);
    notifyListeners();
  }
}