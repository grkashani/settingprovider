import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settingprovider/common/constant.dart';
import 'package:settingprovider/ui/sign/screens/mobile_sign_screen.dart';
import '../../providers/platform_provider.dart';

class SignPage extends StatelessWidget {
  final String title;

  const SignPage({super.key, required this.title});

  // Returns the appropriate platform screen based on platform state
  Widget _getPlatformScreen(PlatformState platform) {
    switch (platform) {
      default:
        return const SignPageMobileScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    final platform = context.select((PlatformNotifier notifier) => notifier.platform);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: _getPlatformScreen(platform),
    );
  }
}
