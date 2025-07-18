Future<void> signUp({
  required String email,
  required String password,
}) async {
  final regex = RegExp(r'^((?!\.)[\w\-_.]*[^.])(@\w+)(\.\w+(\.\w+)?[^.\W])$');
  final hasMatch = regex.hasMatch(email);
  if (!hasMatch) {
    throw Exception('The email is poorly formatted!');
  }
  print('[signUp] The email is $email and password is $password');
}
