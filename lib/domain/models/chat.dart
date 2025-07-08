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

  factory Chat.fromMap({
    required Map<String, dynamic> map,
    String? currentUserId,
  }) {
    return Chat(
      id: map['id'],
      isGroup: map['isGroup'] ?? false,
      createdAt: map['createdAt'] != null ? DateTime.parse(map['createdAt']) : null,
      lastMessage: map['lastMessage'] != null ? Message.fromMap(map: map['lastMessage'], userId: currentUserId) : null,
      participants: List<String>.from(map['participants'] ?? []),
    );
  }
}
