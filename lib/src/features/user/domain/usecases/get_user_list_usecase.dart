import 'package:clean_architecture/src/features/user/data/repositories/user_repository_impl.dart';
import 'package:clean_architecture/src/features/user/domain/entities/user_entity.dart';
import 'package:clean_architecture/src/features/user/domain/repositories/user_repository.dart';

class GetUserListUseCase {
  final UserRepository _repository = UserRepositoryImpl();

  Future<List<UserEntity>> execute() async {
    try {
      return await _repository.getUserList();
    } catch (_) {
      rethrow;
    }
  }
}
