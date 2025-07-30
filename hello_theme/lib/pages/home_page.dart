import 'package:flutter/material.dart';
import 'package:hello_theme/state/theme_mode_notifier.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'This is the home page',
            style: TextStyle(
              fontSize: 28.0,
            ),
          ),
          FilledButton(
            onPressed: () {
              themeModeNotifier.value = ThemeMode.light;
            },
            child: Text(
              'Switch to Light Mode',
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
          ),
          FilledButton(
            onPressed: () {
              themeModeNotifier.value = ThemeMode.dark;
            },
            child: Text(
              'Switch to Dark Mode',
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
          ),

          Row(
            children: [
              Expanded(
                flex: 2, // 2/4 = 50%
                child: Container(
                  width: double.infinity,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 196, 0),
                  ),
                ),
              ),
              Expanded(
                flex: 1, // 1/4 = 25%
                child: Container(
                  width: double.infinity,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 251, 0, 255),
                  ),
                ),
              ),
              Expanded(
                flex: 1, // 1/4 = 25%
                child: Container(
                  width: double.infinity,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 255, 251),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
