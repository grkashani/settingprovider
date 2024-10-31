import 'package:flutter/material.dart';
import 'package:settingprovider/common/constant.dart';

class PlatformNotifier extends ChangeNotifier {
  PlatformState platform = PlatformState.desktop;

  void screenPlatformStateUpdate(Size s) {
    if (s.width > 1200) {
      platform = PlatformState.desktop;
    } else if (s.width > 800) {
      platform = PlatformState.tablet;
    } else {
      platform = PlatformState.mobile;
    }
    notifyListeners();
  }
}
