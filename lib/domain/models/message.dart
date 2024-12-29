class Message {
  final String id;
  final bool isRead;
  final String chatId;
  final String content;
  final String senderId;
  final String? mediaUrl;
  final DateTime timestamp;

  const Message({
    required this.id,
    required this.chatId,
    required this.content,
    required this.senderId,
    required this.timestamp,
    this.mediaUrl,
    this.isRead = false,
  });
}
