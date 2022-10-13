import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  int counter = 0;

  void tapped() {
    counter++;
    notifyListeners();
  }
}
