import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settingprovider/providers/page_provider.dart';

import '../constant.dart';
class PagesButton extends StatelessWidget {
  const PagesButton({super.key});

  @override
  Widget build(BuildContext context) {
    PageNotifier pageNotifier = context.watch<PageNotifier>();
    return  Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              pageNotifier.updatePageState(PageState.sign);
            },
            child: const Text('Sign Page'),
          ),
          ElevatedButton(
            onPressed: () {
              pageNotifier.updatePageState(PageState.home);
            },
            child: const Text('Home Page'),
          ),
          ElevatedButton(
            onPressed: () {
              pageNotifier.updatePageState(PageState.dashboard);
            },
            child: const Text('Dashboard Page'),
          ),
        ],
      ),
    );
  }
}
