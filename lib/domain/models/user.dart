class User {
  final String id;
  final String name;
  final String number;
  final String? status;
  final String? picture;
  final DateTime? lastSeen;
  final List<String> groups;
  final List<String> contacts;

  const User({
    required this.id,
    required this.name,
    required this.number,
    this.status,
    this.picture,
    this.lastSeen,
    this.groups = const [],
    this.contacts = const [],
  });

  User.fromMap({
    required Map<String, dynamic> map,
    required String userId,
  })  : id = map['id'],
        name = map['name'],
        number = map['number'],
        status = map['status'],
        picture = map['picture'],
        lastSeen = map['lastSeen'] != null ? DateTime.parse(map['lastSeen']) : null,
        groups = List<String>.from(map['groups'] ?? []),
        contacts = List<String>.from(map['contacts'] ?? []);
}
