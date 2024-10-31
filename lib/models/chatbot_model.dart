class ChatBot {
  String name;
  String role;
  String status;
  int position;
  String prompt;
  String message;
  String accessPlan;
  String image;

  ChatBot({
    required this.name,
    required this.role,
    required this.status,
    required this.position,
    required this.prompt,
    required this.message,
    required this.accessPlan,
    required this.image,
  });

  // Factory method to create a ChatBot from JSON
  factory ChatBot.fromJson(Map<String, dynamic> json) {
    return ChatBot(
      name: json['name'],
      role: json['role'],
      status: json['status'],
      position: json['position'],
      prompt: json['prompt'],
      message: json['message'],
      accessPlan: json['access_plan'],
      image: json['image'],
    );
  }

  // Method to convert ChatBot instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'role': role,
      'status': status,
      'position': position,
      'prompt': prompt,
      'message': message,
      'access_plan': accessPlan,
      'image': image,
    };
  }
}
