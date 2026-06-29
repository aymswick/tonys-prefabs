import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final pubGetProgress = context.logger.progress('Installing packages');
  await Process.run('flutter', ['packages', 'get']);
  pubGetProgress.complete();

  final dartFmtProgress = context.logger.progress('Formatting Dart code');
  await Process.run('dart', ['fmt', '.']);
  dartFmtProgress.complete();
}
