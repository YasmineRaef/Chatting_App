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
