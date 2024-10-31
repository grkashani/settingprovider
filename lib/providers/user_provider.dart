import 'package:flutter/material.dart';

class UserNotifier extends ChangeNotifier {
  bool _isSignedIn = false;

  bool get isSignedIn => _isSignedIn;

  void signIn({required String username, required String password}) {
    // Add authentication logic here, e.g., API call
    // For now, we’ll assume sign-in is successful
    _isSignedIn = true;
    notifyListeners();
  }

  void signOut() {
    _isSignedIn = false;
    notifyListeners();
  }
}
