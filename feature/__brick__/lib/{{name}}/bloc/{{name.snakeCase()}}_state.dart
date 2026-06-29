part of '{{name.snakeCase()}}_bloc.dart';

enum {{name.pascalCase()}}Status {
  initial,
  success,
  failure
}

final class {{name.pascalCase()}}State {
  const {{name.pascalCase()}}State({this.status = {{name.pascalCase()}}Status.initial});

  final {{name.pascalCase()}}Status status;
}
