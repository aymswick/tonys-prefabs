import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name.snakeCase()}}/auth/auth.dart';
import 'package:{{name.snakeCase()}}/login/login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          LoginBloc(authRepository: context.read<AuthRepository>()),
      child: const LoginForm(),
    );
  }
}
