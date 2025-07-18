import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  final void Function({required String email, required String password}) onSignUp;
  final VoidCallback onOrLogIn;
  const SignupPage({
    super.key,
    required this.onSignUp,
    required this.onOrLogIn,
  });

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
              'Sign Up',
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
                widget.onSignUp(email: email, password: password);
              },
              child: Text('Sign up'),
            ),
            SizedBox(height: 8.0),
            TextButton(
              onPressed: widget.onOrLogIn,
              child: Text('Or Log In'),
            ),
          ],
        ),
      ),
    );
  }
}
