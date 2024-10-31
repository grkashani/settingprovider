import 'package:flutter/material.dart';

class SignPageControllerProvider with ChangeNotifier {
  final TextEditingController signInEmailController = TextEditingController();
  final TextEditingController signInPasswordController = TextEditingController();

  final TextEditingController signUpEmailController = TextEditingController();
  final TextEditingController signUpUsernameController = TextEditingController();
  final TextEditingController signUpPasswordController = TextEditingController();
  final TextEditingController signUpConfirmPasswordController = TextEditingController();

  @override
  void dispose() {
    signInEmailController.dispose();
    signInPasswordController.dispose();
    signUpEmailController.dispose();
    signUpUsernameController.dispose();
    signUpPasswordController.dispose();
    signUpConfirmPasswordController.dispose();
    super.dispose();
  }
}
