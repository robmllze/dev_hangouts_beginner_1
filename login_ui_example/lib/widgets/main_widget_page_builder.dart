// ignore_for_file: type_literal_in_constant_pattern, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:login_ui_example/utils/log_in.dart';
import 'package:login_ui_example/utils/sign_up.dart';
import 'package:login_ui_example/widgets/main_widget.dart';
import 'package:login_ui_example/widgets/pages/login_page.dart';
import 'package:login_ui_example/widgets/pages/signup_page.dart';

class MainWidgetPageBuilder extends StatelessWidget {
  final MainWidgetState state;
  const MainWidgetPageBuilder({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    switch (state.currentPage) {
      case LoginPage:
        return LoginPage(
          onLogin: ({required String email, required String password}) async {
            logIn(email: email, password: password);
          },
          onOrSignUp: () {
            state.setState(() {
              state.currentPage = SignupPage;
            });
          },
        );

      case SignupPage:
        return SignupPage(
          onSignUp: ({required String email, required String password}) async {
            try {
              await signUp(email: email, password: password);
            } catch (e) {
              // TODO: Print a dialog showing the error to the use.
            }
          },
          onOrLogIn: () {
            state.setState(() {
              state.currentPage = LoginPage;
            });
          },
        );

      default:
        return Center(
          child: Text('Routing Error!'),
        );
    }
  }
}
