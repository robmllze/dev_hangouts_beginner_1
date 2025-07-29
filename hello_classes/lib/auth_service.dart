class AuthService {
  // // default constructor
  // AuthService() {
  //   _isLoggedIn = false;
  // }

  // lazy instantiation

  //AuthService get instance => _instance ??= AuthService._private();

  static AuthService get instance {
    if (_instance == null) {
      _instance = AuthService._private();
    }
    return _instance!;
  }

  static AuthService? _instance;

  // named constructor
  AuthService._private() {
    _isLoggedIn = false;
  }

  bool _isLoggedIn = false; // flag

  Future<void> logIn() async {
    // out logic here
    _isLoggedIn = true;
  }

  Future<void> logOut() async {
    // out logic here
    _isLoggedIn = false;
  }
}
