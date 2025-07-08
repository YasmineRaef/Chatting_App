import 'package:faker/faker.dart';

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
