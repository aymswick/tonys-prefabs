import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name.snakeCase()}}/login/login.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        TextFormField(controller: _usernameController),
        TextFormField(controller: _passwordController),
        ElevatedButton.icon(
          icon: Icon(Icons.forward),
          label: Text('Log In'),
          onPressed: () => context.read<LoginBloc>().add(
            LoginSubmitted(
              username: _usernameController.text,
              password: _passwordController.text,
            ),
          ),
        ),
      ],
    );
  }
}
