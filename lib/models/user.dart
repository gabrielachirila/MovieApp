import 'package:crypto/crypto.dart';
import 'dart:convert';

class User {
  final int? id;
  final String username;
  final String email;
  final String passwordHash;
  List<int> favoriteMovies;
  List<int> favoriteActors;

  User({
    this.id,
    required this.username,
    required this.email,
    required this.passwordHash,
    required this.favoriteMovies,
    required this.favoriteActors,
  });

  static String hashPassword(String password) {
    var bytes = utf8.encode(password);
    var hashedBytes = sha256.convert(bytes);
    return hashedBytes.toString();
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'username': username,
        'email': email,
        'passwordHash': passwordHash,
        'favoriteMovies': favoriteMovies.join(','),
        'favoriteActors': favoriteActors.join(','),
      };

  static User fromJson(Map<String, dynamic> json) => User(
        id: json['id'],
        username: json['username'],
        email: json['email'],
        passwordHash: json['passwordHash'],
        favoriteMovies:
            json['favoriteMovies'].split(',').map((e) => int.parse(e)).toList(),
        favoriteActors:
            json['favoriteActors'].split(',').map((e) => int.parse(e)).toList(),
      );

  bool verifyPassword(String password) {
    var hashedPassword = hashPassword(password);
    return hashedPassword == passwordHash;
  }
}
