import 'package:faker/faker.dart';

import 'message.dart';

class Chat {
  final String id;
  final bool isGroup;
  final DateTime? createdAt;
  final Message? lastMessage;
  final List<String> participants;

  const Chat({
    required this.id,
    required this.participants,
    this.createdAt,
    this.lastMessage,
    this.isGroup = false,
  });
}

class ChatData {
  final String url;
  final String name;
  final String message;
  final String timeStamp;

  ChatData({required this.url, required this.name, required this.message, required this.timeStamp});
}

ChatData generatePerson() {
  final faker = Faker();
  return ChatData(
      url: faker.image.image(width: 50, height: 50, keywords: ['people'], random: true),
      name: faker.person.name(),
      message: faker.lorem.sentence(),
      timeStamp: "12:58 PM");
}
