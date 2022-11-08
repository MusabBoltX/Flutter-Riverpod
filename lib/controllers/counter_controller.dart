import 'package:flutter/cupertino.dart';

class CounterController extends ChangeNotifier {
  int counter = 0;

  void incrementCounter() {
    counter++;
    notifyListeners();
  }

  void decrementCounter() {
    counter--;
    notifyListeners();
  }

  void resetCounter() {
    counter = 0;
    notifyListeners();
  }

}