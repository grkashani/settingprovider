import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settingprovider/providers/platform_provider.dart';
import '../../common/constant.dart';
import 'screens/dashboard_mobile_screen.dart';

class DashboardPage extends StatelessWidget {
  final String title;

  const DashboardPage({super.key, required this.title});

  Widget createDashboardPage(Widget body) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: body,
    );
  }

  @override
  Widget build(BuildContext context) {
    PlatformNotifier platformNotifier = context.watch<PlatformNotifier>();
    switch (platformNotifier.platform) {
      case PlatformState.mobile:
        return createDashboardPage(const DashboardMobileScreen(title: 'Mobile',));
      case PlatformState.tablet:
        return createDashboardPage(const DashboardMobileScreen(title: 'Tablet'));
      default:
        return createDashboardPage(const DashboardMobileScreen(title: 'Desktop',));
    }
  }
}
