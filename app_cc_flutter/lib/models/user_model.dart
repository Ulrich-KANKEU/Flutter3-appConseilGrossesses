import 'pregnancy_model.dart';

class UserModel {
  final int id;
  final String name;
  final String email;
  final DateTime dateOfBirth;
  final PregnancyModel? pregnancy;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.dateOfBirth,
    this.pregnancy,
  });
}