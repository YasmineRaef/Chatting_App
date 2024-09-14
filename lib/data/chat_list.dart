import 'package:flutter/material.dart';

import '../presentation/resources/app_assets.dart';
import '../presentation/widgets/chat_bubbles.dart';

List msgSent = [
  const ChatMessageBubble(message: "Hi"),
  const ChatImageBubble(imagePath: AppAssets.lettuceProfile),
  const ChatMessageBubble(message: "Nice to meet you too!!"),
];

List msgGot = [
  const ChatMessageBubble(message: "Hello!!"),
  const ChatImageBubble(imagePath: AppAssets.lettuceProfile),
  const ChatMessageBubble(message: "Nice to meet you!!"),
  const ChatMessageBubble(message: "Hello i am happy that it did work but with the row nested in another row not as we wanted using a wrap widget")
];

void addMessage(Widget value) => msgSent.add(value);
