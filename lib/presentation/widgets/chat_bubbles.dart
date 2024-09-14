import 'package:flutter/material.dart';

class ChatMessageBubble extends StatelessWidget {
  final String message;
  const ChatMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration:
          BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(22), border: Border.all(color: Colors.teal.shade300, width: 2)),
      child: Text(message, textAlign: TextAlign.justify, style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 18)),
    );
  }
}

class ChatImageBubble extends StatelessWidget {
  final String imagePath;
  const ChatImageBubble({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 120,
      padding: const EdgeInsets.all(10),
      decoration:
          BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(22), border: Border.all(color: Colors.teal.shade300, width: 2)),
      child: Image(image: AssetImage(imagePath)),
    );
  }
}
