import 'package:flutter/material.dart';

import '../../../models/chatbot_model.dart';

class ChatBotListItem extends StatelessWidget {
  final ChatBot chatBot;

  const ChatBotListItem({super.key, required this.chatBot});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: ListTile(
        leading: Hero(
          tag: chatBot.name,
          child: Image.asset(
            chatBot.image,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(Icons.error); // Placeholder icon if image fails to load.
            },
          ),
        ),
        title: Text(chatBot.name),
        subtitle: Text(chatBot.role),
        trailing: Text(chatBot.accessPlan),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatBotDetailPage(chatBot: chatBot),
            ),
          );
        },
      ),
    );
  }
}

class ChatBotDetailPage extends StatelessWidget {
  final ChatBot chatBot;

  const ChatBotDetailPage({super.key, required this.chatBot});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(chatBot.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: chatBot.name,
              child: Image.asset(
                chatBot.image,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.error); // Placeholder icon if image fails to load.
                },
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              chatBot.name,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8.0),
            Text(
              chatBot.role,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16.0),
            Text(
              chatBot.prompt,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}