import 'package:go_router/go_router.dart';
import 'package:{{name.snakeCase()}}/intro/intro.dart';

final router = GoRouter(
  routes: [GoRoute(path: '/', builder: (context, state) => IntroView())],
);
