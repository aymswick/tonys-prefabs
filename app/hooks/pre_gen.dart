import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) {
  // Stuff the current date into mason's context
  final now = DateTime.now();
  context.vars['current_date'] = '${now.month}-${now.day}-${now.year}';
}
