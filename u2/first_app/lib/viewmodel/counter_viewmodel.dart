import 'package:flutter/material.dart';

import '../model/counter.dart';

class CounterViewModel extends ChangeNotifier{
  
  final Counter _counter = Counter();

  int get counterValue => _counter.value;

  void increaseCounter(){
    _counter.increase();
    notifyListeners(); // Necessary so the UI sees the value changed
  }

  void decreaseCounter(){
    _counter.decrease();
    notifyListeners();
  }

  void resetCounter(){
    _counter.reset();
    notifyListeners();
  }
}