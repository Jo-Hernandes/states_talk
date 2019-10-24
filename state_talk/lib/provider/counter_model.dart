import 'package:flutter/foundation.dart';

class CounterModel extends ChangeNotifier {
  var counterValue = 0;

  void addToCounter() {
    counterValue++;
    notifyListeners();
  }
}
