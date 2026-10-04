import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Welcome to test123'),
        IconButton(
          icon: Icon(Icons.forward),
          onPressed: () => context.go('/login'),
        ),
      ],
    );
  }
}
