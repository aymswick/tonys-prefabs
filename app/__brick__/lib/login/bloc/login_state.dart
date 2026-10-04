part of 'login_bloc.dart';

enum LoginStatus { initial, success, failure }

final class LoginState {
  const LoginState({this.status = LoginStatus.initial});

  final LoginStatus status;

  LoginState copyWith({LoginStatus? status}) {
    return LoginState(status: status ?? this.status);
  }
}
