## Raygun CLI

Command-line tool for Raygun.com.

### Usage

Install in your system:

```
dart pub global activate -s path .
```

Then use:

```
raygun-cli <command> <arguments>
```

Note: `$HOME/.pub-cache/bin` must be in your path.

Or use directly from sources:

```
dart bin/raygun_cli.dart <command> <arguments>
```

#### Sourcemap Uploader

Upload sourcemaps to Raygun

```
Usage: raygun-cli sourcemap --uri=<uri> --app-id=<app-id> --token=<token>

-h, --help         Print sourcemap usage information.
-p, --platform     Specify project platform. Supported: [flutter]
                   (defaults to "flutter")
-m, --input-map    Input sourcemap file
                   (defaults to "build/web/main.dart.js.map")
    --uri          Application URI (e.g. https://example.com/main.dart.js)
    --app-id       Raygun's application ID
    --token        Raygun's access token
```

For example, from your Flutter project folder:

```
raygun-cli sourcemap --uri=https://example.com/main.dart.js --app-id=APP_ID --token=TOKEN
```

## TODO

- [ ] Generate and distribute binaries
- [ ] Upload to pub.dev
- [ ] Support more platforms (node and other JS projects)
- [ ] Add more useful commands
- [ ] Support config files (e.g. `.raygun.conf` to read values like `uri` and `app-id`)
- [ ] Tests

## Development

### Compiling a binary

Compile a self-contained exec:

```
dart compile exe bin/raygun_cli.dart -o raygun-cli
```

Note: The binary is compiled for the architecture and host system. To compile for macOS and Windows we must setup CI VMs. See: https://dart.dev/tools/dart-compile#known-limitations

