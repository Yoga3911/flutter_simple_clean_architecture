part of 'user_bloc.dart';

class UserState extends Equatable {
  const UserState();

  @override
  List<Object?> get props => [];
}

class UserInitialState extends UserState {}

class UserLoadingState extends UserState {}

class UserSuccessState extends UserState {
  final List<UserEntity> userList;

  const UserSuccessState(this.userList);

  @override
  List<Object?> get props => [userList];
}

class UserFailureState extends UserState {
  final String message;
  const UserFailureState(this.message);

  @override
  List<Object?> get props => [message];
}
