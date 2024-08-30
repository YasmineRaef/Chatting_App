import 'package:chatting_app/presentation/customs/chat_bubbles.dart';
import 'package:flutter/material.dart';

List chat = [
  const ChatMessageBubble(msg: " Hello!! "),
  const ChatImageBubble(
    imagePath: "assets/images/profile_lettuce.jpg",
  ),
  const ChatMessageBubble(msg: " Nice to meet you!!")
];
void addMessage(Widget value) {
  chat.add(value);
}
