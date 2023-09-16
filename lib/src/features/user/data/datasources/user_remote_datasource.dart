import 'dart:developer';

import 'package:clean_architecture/src/features/user/data/models/user_model.dart';
import 'package:dio/dio.dart';

sealed class UserRemoteDataSource {
  Future<List<UserModel>> fetchUserList();
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final Dio _dio = Dio();

  @override
  Future<List<UserModel>> fetchUserList() async {
    final List<UserModel> userList = [];
    try {
      final response = await _dio.get("https://reqres.in/api/users");
      if (response.statusCode == 200) {
        for (var user in response.data["data"]) {
          userList.add(UserModel.fromJson(user));
        }
      }

      return userList;
    } on DioException catch (e) {
      log(e.toString());
      rethrow;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
