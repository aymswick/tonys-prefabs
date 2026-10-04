part of 'auth_bloc.dart';

enum AuthStatus { unauthenticated, authenticated }

final class AuthState {
  const AuthState({this.status = AuthStatus.unauthenticated});

  final AuthStatus status;
}
