import 'dart:async';
import 'package:meta/meta.dart';
import 'package:{{name.snakeCase()}}/auth/auth.dart';

class AuthRepository {
  final _controller = StreamController<AuthState>.broadcast();

  Stream<AuthState> get authStatus => _controller.stream;

  AuthState _currentState = const AuthState();

  Future<void> login() async {
    // TODO(ant): implement real login
    await Future.delayed(const Duration(milliseconds: 500));
    _currentState = const AuthState(status: AuthStatus.authenticated);
    _controller.add(_currentState);
  }

  Future<void> logout() async {
    // TODO(ant): implement real logout
    _currentState = const AuthState(status: AuthStatus.unauthenticated);
    _controller.add(_currentState);
  }

  void dispose() {
    _controller.close();
  }
}
