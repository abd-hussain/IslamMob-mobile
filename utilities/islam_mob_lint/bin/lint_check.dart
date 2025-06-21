import 'dart:io';

import 'package:logger_manager/logger_manager.dart';

void main(List<String> args) async {
  final directory = args.isNotEmpty ? args.first : '.';

  LoggerManagerBase.logInfo(message: 'Running lint check on $directory...');

  // Run the analyzer
  final analyzerResult = await Process.run(
    'dart',
    ['analyze', directory],
  );

  LoggerManagerBase.logInfo(message: '\n--- Analyzer Results ---');
  LoggerManagerBase.logInfo(message: analyzerResult.stdout.toString());

  if (analyzerResult.exitCode != 0) {
    LoggerManagerBase.logErrorMessage(
      error: 'Analyzer exit code: ${analyzerResult.exitCode}',
      message: 'Analyzer found issues!',
    );
    exit(1);
  }

  // Run custom lint
  final customLintResult = await Process.run(
    'dart',
    ['run', 'custom_lint', directory],
  );

  LoggerManagerBase.logInfo(message: '\n--- Custom Lint Results ---');
  LoggerManagerBase.logInfo(message: customLintResult.stdout.toString());

  if (customLintResult.exitCode != 0) {
    LoggerManagerBase.logErrorMessage(
      error: 'Custom lint exit code: ${customLintResult.exitCode}',
      message: 'Custom lint found issues!',
    );
    exit(1);
  }

  LoggerManagerBase.logInfo(message: '\nAll lint checks passed!');
  exit(0);
}
