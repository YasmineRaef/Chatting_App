class Message {
  final String id;
  final String? type;
  final String chatId;
  final String content;
  final String senderId;
  final String? mediaUrl;
  final DateTime timestamp;
  final Map<String, bool>? readReceipts;

  const Message({
    required this.id,
    required this.chatId,
    required this.content,
    required this.senderId,
    required this.timestamp,
    this.type,
    this.mediaUrl,
    this.readReceipts,
  });
}
