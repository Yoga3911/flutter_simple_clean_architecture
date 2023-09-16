import 'package:clean_architecture/src/features/user/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<List<UserEntity>> getUserList();
}