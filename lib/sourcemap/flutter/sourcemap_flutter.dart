import 'package:args/args.dart';
import 'package:raygun_cli/sourcemap/sourcemap_api.dart';

void sourcemapFlutter(ArgResults command, bool verbose) {
  final appId = command.option('app-id')!;
  final token = command.option('token')!;
  final path = command.option('input-map')!;
  final uri = command.option('uri')!;
  if (verbose) {
    print('app-id: $appId');
    print('token: $token');
    print('input-map: $path');
    print('uri: $uri');
  }
  uploadSourcemap(appId: appId, token: token, path: path, uri: uri);
}
