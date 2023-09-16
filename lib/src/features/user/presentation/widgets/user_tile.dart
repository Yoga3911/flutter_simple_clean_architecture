import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  final String fullName;
  final String email;
  final String avatar;
  const UserTile({
    super.key,
    required this.fullName,
    required this.email,
    required this.avatar,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(avatar),
      title: Text(fullName),
      subtitle: Text(email),
    );
  }
}
