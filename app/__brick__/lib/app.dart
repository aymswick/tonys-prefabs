import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/router.dart';

class {{name.toCamelCase()}}App extends StatelessWidget {
  const {{name.toCamelCase()}}App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: '{{name.toCamelCase()}}',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      routerConfig: router,
      builder: (context, child) {
        return Scaffold(body: child);
      },
    );
  }
}
