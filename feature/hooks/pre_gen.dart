import 'dart:io';

import 'package:mason/mason.dart';
import 'package:yaml/yaml.dart';

void run(HookContext context) async {
  const packageNames = ['yaml', 'bloc'];
  for (final package in packageNames) {
    await addDependency(context, package);
  }

  final hostPackageName = await readValueFromPubspec('name');
  context.vars['host_package_name'] = hostPackageName;
}

Future<void> addDependency(HookContext context, String package) async {
  final addDependenciesProgress = context.logger
      .progress('[DependencyAdd] Adding package $package to pubspec.yaml');

  final result = await Process.run('dart', ['pub', 'add', '$package']);

  if (result.exitCode == 0) {
    addDependenciesProgress
        .complete('Successfully added $package into pubspec.yaml!');
  } else {
    addDependenciesProgress.fail('Failed to add package: ${result.stderr}');
  }
}

Future<String> readValueFromPubspec(String key) async {
  final rootPubspec = File('${Directory.current.path}/pubspec.yaml');
  final pubspecContent = rootPubspec.readAsStringSync();

  final yamlMap = loadYaml(pubspecContent) as YamlMap;
  final appName = yamlMap['name'] as String?;
  return appName ?? 'replaceme';
}
