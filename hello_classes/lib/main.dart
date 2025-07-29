import 'package:df_di/df_di.dart';

import 'auth_service.dart';

final authService = AuthService.instance;
final geoLocationService = DatabaseService();

class DatabaseService {}

// service locator

void main() {
  setUp();

  // Provider
  // Riverpod

  runApp(/* ROOT WIDGET */);
}

void runApp() {}

void setUp() {
  final authService = AuthService.instance;
  DI.global.register(authService);
  final databseService = DatabaseService();
  DI.global.register(databseService);
}
