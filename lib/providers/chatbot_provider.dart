
import 'package:flutter/cupertino.dart';

import '../models/chatbot_model.dart';

class ChatBotNotifier extends ChangeNotifier{
  final List<ChatBot> _chatBots = [];

  // Initialize repository with a list of JSON data
  ChatBotNotifier(List<Map<String, dynamic>> jsonData) {
    _chatBots.addAll(jsonData.map((json) => ChatBot.fromJson(json)));
  }

  // Method to get all chatbots
  List<ChatBot> getAll() {
    return List.unmodifiable(_chatBots); // Returns an unmodifiable list
  }

  // Method to find a chatbot by name
  ChatBot? findByName(String name) {
    return _chatBots.firstWhere(
          (bot) => bot.name == name,
      orElse: () => throw Exception('ChatBot not found'),
    );
  }

  // Method to delete a chatbot by name
  bool deleteByName(String name) {
    final initialLength = _chatBots.length;
    _chatBots.removeWhere((bot) => bot.name == name);
    return _chatBots.length < initialLength;
  }

  // Method to add a new ChatBot
  void addChatBot(ChatBot chatBot) {
    _chatBots.add(chatBot);
  }
}
