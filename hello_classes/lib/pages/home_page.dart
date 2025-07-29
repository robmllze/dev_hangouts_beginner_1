import 'package:df_di/df_di.dart';
import 'package:hello_classes/auth_service.dart';
import 'package:hello_classes/main.dart';

class HomePage {
  //

  dynamic build(dynamic context) {
    final authService = DI.global<AuthService>();
    final databseService = DI.global<DatabaseService>();

    DI.global.unregister<DatabaseService>();
  }
}
