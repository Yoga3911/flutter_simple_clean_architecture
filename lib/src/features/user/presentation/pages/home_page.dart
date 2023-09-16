import 'package:clean_architecture/src/features/user/presentation/blocs/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/user_list_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserBloc()..add(GetUserListEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("User"),
          centerTitle: true,
        ),
        body: BlocBuilder<UserBloc, UserState>(
          builder: (_, state) {
            if (state is UserLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is UserSuccessState) {
              return UserListTile(userList: state.userList);
            } else if (state is UserFailureState) {
              return Center(
                child: Text(state.message),
              );
            }

            return const SizedBox();
          },
        ),
      ),
    );
  }
}
