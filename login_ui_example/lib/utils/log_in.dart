Future<void> logIn({
  required String email,
  required String password,
}) async {
  final regex = RegExp(r'^((?!\.)[\w\-_.]*[^.])(@\w+)(\.\w+(\.\w+)?[^.\W])$');
  final hasMatch = regex.hasMatch(email);
  if (!hasMatch) {
    throw Exception('The email is poorly formatted!');
  }

  // Continue...

  print('[logIn] The email is $email and password is $password');
}
