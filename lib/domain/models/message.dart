class Message {
  final String id;
  final String? type;
  final String chatId;
  final String content;
  final String senderId;
  final bool isMine;
  final String? mediaUrl;
  final DateTime timestamp;
  final Map<String, bool>? readReceipts;

  const Message({
    required this.id,
    required this.chatId,
    required this.content,
    required this.senderId,
    required this.timestamp,
    required this.isMine,
    this.type,
    this.mediaUrl,
    this.readReceipts,
  });

  Message.fromMap({
    required Map<String, dynamic> map,
    String? userId,
  })  : id = map['id'],
        chatId = map['chatId'],
        content = map['content'],
        senderId = map['senderId'],
        timestamp = DateTime.parse(map['timestamp']),
        type = map['type'],
        mediaUrl = map['mediaUrl'],
        isMine = userId != null && userId == map['senderId'],
        readReceipts = map['readReceipts'] != null ? Map<String, bool>.from(map['readReceipts']) : null;
}
