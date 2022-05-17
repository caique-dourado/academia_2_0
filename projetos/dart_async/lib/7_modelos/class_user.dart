import 'dart:convert';

import 'package:dart_async/7_modelos/class_UserTypes.dart';

class User {
  final String id;
  final String name;
  final String username;
  final List<UserTypes> user_types;
  User({
    required this.id,
    required this.name,
    required this.username,
    required this.user_types,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'username': username,
      'user_types': user_types.map((x) => x.toMap()).toList(),
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      username: map['username'] ?? '',
      user_types: List<UserTypes>.from(
          map['user_types']?.map((x) => UserTypes.fromMap(x)) ?? const []),
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(id: $id, name: $name, username: $username, user_types: $user_types)';
  }
}
