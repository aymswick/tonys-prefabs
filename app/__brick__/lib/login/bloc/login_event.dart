part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {}

class LoginSubmitted extends LoginEvent {
  LoginSubmitted({required String username, required String password});
}
