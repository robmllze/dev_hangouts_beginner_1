import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'main_widget_page_builder.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({super.key});

  @override
  State<MainWidget> createState() => MainWidgetState();
}

class MainWidgetState extends State<MainWidget> {
  Type currentPage = LoginPage;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Align(
          alignment: Alignment.topCenter,
          child: MainWidgetPageBuilder(
            state: this,
          ),
        ),
      ),
    );
  }
}
