import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:{{name.snakeCase()}}/intro/intro.dart';
import 'package:{{name.snakeCase()}}/auth/auth.dart';
import 'package:{{name.snakeCase()}}/login/login.dart';

final router = GoRouter(
  redirect: (context, state) {
    if (context.read<AuthBloc>().state.status == AuthStatus.unauthenticated) {
      return '/login';
    } else {
      return null;
    }
  },
  routes: [
    GoRoute(path: '/', builder: (context, state) => IntroView()),
    GoRoute(path: '/login', builder: (context, state) => LoginPage()),
  ],
);
