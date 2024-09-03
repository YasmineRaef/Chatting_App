import 'package:flutter/material.dart';

import '../presentation/resources/app_assets.dart';
import '../presentation/widgets/chat_bubbles.dart';

List chat = [
  const ChatMessageBubble(message: "Hello!!"),
  const ChatImageBubble(imagePath: AppAssets.lettuceProfile),
  const ChatMessageBubble(message: "Nice to meet you!!"),
  const ChatMessageBubble(message: "Testing")
];

void addMessage(Widget value) => chat.add(value);
