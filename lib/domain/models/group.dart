import 'message.dart';

class Group {
  final String id;
  final String name;
  final String? picture;
  final DateTime createdAt;
  final String? description;
  final Message? lastMessage;
  final List<String> adminIds;
  final List<String> participants;

  const Group({
    required this.id,
    required this.name,
    required this.adminIds,
    required this.createdAt,
    required this.participants,
    this.picture,
    this.description,
    this.lastMessage,
  });

  Group.fromMap({required Map<String, dynamic> map, required groupId})
      : id = map['id'],
        name = map['name'],
        adminIds = List<String>.from(map['adminIds'] ?? []),
        createdAt = DateTime.parse(map['createdAt']),
        participants = List<String>.from(map['participants'] ?? []),
        picture = map['picture'],
        description = map['description'],
        lastMessage = map['lastMessage'] != null ? Message.fromMap(map: map['lastMessage']) : null;
}
