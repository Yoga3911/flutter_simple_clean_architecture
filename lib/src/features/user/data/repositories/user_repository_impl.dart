import 'package:clean_architecture/src/features/user/data/datasources/user_remote_datasource.dart';
import 'package:clean_architecture/src/features/user/domain/entities/user_entity.dart';
import 'package:clean_architecture/src/features/user/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource _dataSource = UserRemoteDataSourceImpl();
  @override
  Future<List<UserEntity>> getUserList() async {
    try {
      return await _dataSource.fetchUserList();
    } catch (_) {
      rethrow;
    }
  }
}
