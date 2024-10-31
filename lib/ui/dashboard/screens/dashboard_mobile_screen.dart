import 'package:flutter/material.dart';
import 'package:settingprovider/common/widgets/pages_button.dart';

import '../../../providers/chatbot_provider.dart';


class DashboardMobileScreen extends StatelessWidget {
  final String title;
  const DashboardMobileScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    print(title);
    // // Get all chatbots from the repository
    // final chatBots = context.watch<ChatBotNotifier>().getAll();

    return Scaffold(
      appBar: AppBar(title:  Text(title),),
      body: const PagesButton(),
    );
  }
}

// ListView.builder(
// itemCount: chatBots.length,
// itemBuilder: (context, index) {
// final chatBot = chatBots[index];
// return ChatBotListItem(chatBot: chatBot);
// },
// )