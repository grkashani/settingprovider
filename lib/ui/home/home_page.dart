import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settingprovider/ui/home/screens/home_page_mobile_screen.dart';
import 'package:settingprovider/providers/platform_provider.dart';

import '../../common/constant.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({super.key, required this.title});

  Widget createHomePage(Widget body) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: body
    );
  }

  @override
  Widget build(BuildContext context) {
    PlatformNotifier platformNotifier = context.watch<PlatformNotifier>();
    switch (platformNotifier.platform) {
      case PlatformState.mobile:
        return createHomePage(const HomePageMobileScreen());
      case PlatformState.tablet:
        return createHomePage(const HomePageMobileScreen());
      default:
        return createHomePage(const HomePageMobileScreen());
    }
  }
}
