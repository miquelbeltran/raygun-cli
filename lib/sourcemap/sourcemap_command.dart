import 'package:args/args.dart';
import 'package:raygun_cli/sourcemap/flutter/sourcemap_flutter.dart';

const kSourcemapCommand = 'sourcemap';

ArgParser buildParserSourcemap() {
  return ArgParser()
    ..addFlag(
      'help',
      abbr: 'h',
      negatable: false,
      help: 'Print sourcemap usage information.',
    )
    ..addOption(
      'platform',
      abbr: 'p',
      help: 'Specify project platform. Supported: [flutter]',
      defaultsTo: 'flutter',
    )
    ..addOption(
      'input-map',
      abbr: 'm',
      help: 'Input sourcemap file',
      defaultsTo: 'build/web/main.dart.js.map',
    )
    ..addOption(
      'uri',
      help: 'Application URI (e.g. https://example.com/main.dart.js)',
    )
    ..addOption(
      'app-id',
      help: 'Raygun\'s application ID',
    )
    ..addOption(
      'token',
      help: 'Raygun\'s access token',
    );
}

void parseSourcemapCommand(ArgResults command, bool verbose) {
  if (command.wasParsed('help')) {
    print(
        'Usage: dart raygun_cli.dart sourcemap --uri=<uri> --app-id=<app-id> --token=<token>');
    print(buildParserSourcemap().usage);
    return;
  }
  if (command.wasParsed('uri') &&
      command.wasParsed('app-id') &&
      command.wasParsed('token')) {
    if (command.option('platform') == 'flutter') {
      sourcemapFlutter(command, verbose);
    } else {
      print('Unsupported platform.');
    }
  } else {
    print(
        'Missing arguments. Use "raygun_cli sourcemap --help" for more information.');
  }
}
