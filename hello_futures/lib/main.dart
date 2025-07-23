import 'package:flutter/material.dart';

import 'main_widget.dart';
import 'state/init_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MainWidget(
      initFuture: initApp(),
    ),
  );
}
