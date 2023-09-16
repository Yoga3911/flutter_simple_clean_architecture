import 'package:clean_architecture/src/features/user/domain/entities/user_entity.dart';
import 'package:clean_architecture/src/features/user/domain/usecases/get_user_list_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUserListUseCase _getUserListUseCase = GetUserListUseCase();
  UserBloc() : super(UserInitialState()) {
    on<GetUserListEvent>(_getUserListEvent);
  }

  _getUserListEvent(GetUserListEvent event, Emitter emit) async {
    emit(UserLoadingState());
    try {
      final data = await _getUserListUseCase.execute();
      emit(UserSuccessState(data));
    } catch (e) {
      emit(UserFailureState(e.toString()));
    }
  }
}
