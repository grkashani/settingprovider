import 'package:flutter/material.dart';

class SignNotifier extends ChangeNotifier {
  bool signPageState = false;

  void updateSignState(bool newState) {
    signPageState = newState;
    notifyListeners();
  }
}
