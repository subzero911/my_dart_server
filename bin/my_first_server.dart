import 'dart:io';

import 'package:shelf_plus/shelf_plus.dart';

void main() => shelfRun(init, defaultBindAddress: '0.0.0.0');

Handler init() {
  var app = Router().plus;

  app.get('/', () => File('frontend/index.html'));
  app.get('/api/v1/hello', () => Response.ok('Hello world'));

  return app;
}
