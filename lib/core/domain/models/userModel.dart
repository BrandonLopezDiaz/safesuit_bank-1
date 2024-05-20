import 'package:safesuit_bank/core/domain/entities/user.dart';

class UserModel {

  final String name;
  final String lastName;
  final String telefono;
  final String email;
  final String password;

  UserModel ({required this.name,
    required this.lastName,
    required this.telefono,
    required this.email,
    required this.password
  });

  factory UserModel.fromEntity(User user){
    return UserModel(name: user.name, lastName: user.lastName, telefono: user.telefono, email: user.email, password: user.password);
  }
}