import 'dart:io';

import 'package:shelf_plus/shelf_plus.dart';

void main() => shelfRun(init, defaultBindAddress: '0.0.0.0');

Handler init() {
  var app = Router().plus;

  app.get('/', () => File('frontend/index.html'));
  app.get('/api/hello', () => Response.ok('Hello from API'));

  return app;
}
