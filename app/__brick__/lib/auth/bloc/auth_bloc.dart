import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:{{name.snakeCase()}}/auth/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBloc({required this._authRepository}) : super(const AuthState()) {
    on<AuthStarted>((event, emit) async {
      await _authRepository.login();
    });
  }

  void dispose() {
    _authRepository.dispose();
  }
}
