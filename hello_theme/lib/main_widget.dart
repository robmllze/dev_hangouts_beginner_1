import 'package:flutter/material.dart';

import 'pages/home_page.dart';

import 'state/theme_mode_notifier.dart';
import 'theme/dark_theme.dart';
import 'theme/light_theme.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: themeModeNotifier,
      builder: (context, _, _) {
        return MaterialApp(
          title: 'Hello Theme',
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: themeModeNotifier.value,
          home: const HomePage(),
        );
      },
    );
  }
}
