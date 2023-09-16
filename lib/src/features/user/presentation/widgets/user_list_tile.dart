import 'package:clean_architecture/src/features/user/domain/entities/user_entity.dart';
import 'package:clean_architecture/src/features/user/presentation/widgets/user_tile.dart';
import 'package:flutter/material.dart';

class UserListTile extends StatelessWidget {
  final List<UserEntity> userList;
  const UserListTile({
    super.key,
    required this.userList,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: userList.length,
      itemBuilder: (_, index) {
        final user = userList[index];
        return UserTile(
          fullName: "${user.firstName} ${user.lastName}",
          email: user.email,
          avatar: user.avatar,
        );
      },
    );
  }
}
