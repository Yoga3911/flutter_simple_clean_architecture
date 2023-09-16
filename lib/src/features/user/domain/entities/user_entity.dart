import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final int id;
  final String email;
  final String lastName;
  final String firstName;
  final String avatar;

  const UserEntity({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  @override
  List<Object?> get props => [id, email, firstName, lastName, avatar];
}
