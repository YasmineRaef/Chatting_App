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
}
