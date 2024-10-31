import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import provider package
import 'package:settingprovider/common/constant.dart';
import 'package:settingprovider/providers/page_provider.dart';
import 'package:settingprovider/providers/platform_provider.dart';
import 'package:settingprovider/ui/dashboard/dashboard_page.dart';
import 'package:settingprovider/ui/home/home_page.dart';
import 'package:settingprovider/ui/sign/sign_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  Widget getPage(PageState inPage) {
    switch (inPage) {
      case PageState.home:
        return const HomePage(title: 'Home');
      case PageState.dashboard:
        return const DashboardPage(title: 'Dashboard');
      default:
        return const SignPage(title: 'Sign In');
    }
  }

  @override
  Widget build(BuildContext context) {
    final myPageProvider =
        context.watch<PageNotifier>(); // Access Counter from provider
    return (getPage(myPageProvider.currentPage));
  }
}
