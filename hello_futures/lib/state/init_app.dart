import '/models/_models.g.dart';

Future<InitModel> initApp() async {
  await Future.delayed(Duration(seconds: 3));
  // TODO: Open a local file and load some configuration data.
  // TODO: Check if the user is connected to the internet
  // ..
  return InitModel('HELLO WORLD!');
}
