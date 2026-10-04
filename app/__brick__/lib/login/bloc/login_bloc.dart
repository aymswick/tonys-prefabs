import 'package:bloc/bloc.dart';
import 'package:flutter/rendering.dart';
import 'package:{{name.snakeCase()}}/auth/auth_repository.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({AuthRepository? authRepository}) : super(LoginState()) {
    on<LoginSubmitted>((event, emit) {
      // TODO(ant): implement proper login event
      debugPrint('Faking successful login');
      emit(state.copyWith(status: LoginStatus.success));
    });
  }
}
