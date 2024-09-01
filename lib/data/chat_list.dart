import 'package:flutter/material.dart';

import '../presentation/widgets/chat_bubbles.dart';
import '../presentation/resources/app_assets.dart';

List chat = [
  const ChatMessageBubble(message: "Hello!!"),
  const ChatImageBubble(imagePath: AppAssets.lettuceProfile),
  const ChatMessageBubble(message: "Nice to meet you!!"),
  const ChatImageBubble(imagePath: AppAssets.lettuceProfile),
  const ChatMessageBubble(message: "Nice to meet you!!"),
  const ChatImageBubble(imagePath: AppAssets.lettuceProfile),
  const ChatMessageBubble(message: "Nice to meet you!!"),
  const ChatImageBubble(imagePath: AppAssets.lettuceProfile),
  const ChatMessageBubble(message: "Nice to meet you!!"),
  const ChatImageBubble(imagePath: AppAssets.lettuceProfile),
  const ChatMessageBubble(message: "Nice to meet you!!"),
  const ChatImageBubble(imagePath: AppAssets.lettuceProfile),
  const ChatMessageBubble(message: "Nice to meet you!!"),
  const ChatImageBubble(imagePath: AppAssets.lettuceProfile),
  const ChatMessageBubble(message: "Nice to meet you!!"),
  const ChatImageBubble(imagePath: AppAssets.lettuceProfile),
  const ChatMessageBubble(message: "Nice to meet you!!"),
];

void addMessage(Widget value) => chat.add(value);
