import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/router.dart';
import 'package:{{name.snakeCase()}}/auth/auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class {{name.toCamelCase()}}App extends StatelessWidget {
  const {{name.toCamelCase()}}App({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthRepository(),
      child: BlocProvider(
        create: (context) => AuthBloc(
          authRepository: context.read<AuthRepository>(),
        ),
        child: MaterialApp.router(
          title: '',
          theme: ThemeData(
            inputDecorationTheme: const InputDecorationTheme(
              border: OutlineInputBorder(),
            ),
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          ),
          routerConfig: router,
          builder: (context, child) {
            return SafeArea(
              child: Scaffold(
                body: Padding(padding: const EdgeInsets.all(8), child: child),
              ),
            );
          },
        ),
      ),
    );
  }
}
