import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function({required String email, required String password}) onLogin;
  final VoidCallback onOrSignUp;
  const LoginPage({
    super.key,
    required this.onLogin,
    required this.onOrSignUp,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 600.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Log In',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
              obscuringCharacter: 'X',
            ),
            SizedBox(height: 20.0),
            FilledButton(
              onPressed: () {
                final email = emailController.text.trim();
                final password = passwordController.text;
                widget.onLogin(email: email, password: password);
              },
              child: Text('Log In'),
            ),
            SizedBox(height: 8.0),
            TextButton(
              onPressed: widget.onOrSignUp,
              child: Text('Or Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
