import 'dart:convert';

class User {
  final String name;
  final String lastName;
  final String password;
  User({
    required this.name,
    required this.lastName,
    required this.password,
  });

  User copyWith({
    String? name,
    String? lastName,
    String? password,
  }) {
    return User(
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'lastName': lastName,
      'password': password,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'] ?? '',
      lastName: map['lastName'] ?? '',
      password: map['password'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() => 'User(name: $name, lastName: $lastName, password: $password)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is User &&
      other.name == name &&
      other.lastName == lastName &&
      other.password == password;
  }

  @override
  int get hashCode => name.hashCode ^ lastName.hashCode ^ password.hashCode;
}
