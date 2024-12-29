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
      child: Text(message, textAlign: TextAlign.start, style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 18)),
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

class ChatContactBubble extends StatelessWidget {
  const ChatContactBubble({super.key, required this.imagePath, required this.contactName, required this.contactNumber});
  final String imagePath;
  final String contactName;
  final String contactNumber;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.62,
      height: MediaQuery.of(context).size.height * 0.12,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: Colors.teal.shade300, width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(radius: 30, foregroundImage: AssetImage(imagePath)),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(contactName),
                Text(contactNumber),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
