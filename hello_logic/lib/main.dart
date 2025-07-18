import 'dart:convert';

String getFirstName(String fullName) {
  final names = fullName.split(' ').where((e) => e.isNotEmpty);
  return names.first;
}

String getOtherNames(String fullName) {
  final names = fullName.split(' ').where((e) => e.isNotEmpty).toList();
  final otherNames = names.sublist(1);
  final otherNamesString = otherNames.join(' ');
  return otherNamesString;
}

void main() async {
  // print('FIRST NAME: ${getFirstName('John           (Mark) Hudson     ')}');
  // print('OTHER NAME: ${getOtherNames('   John    (Mark)     Hudson')}');

  final userData = await fetchUserData('u_123dsheksj123', '...');
  try {
    final name = userData["name"] as String;
    final age = userData["age"] as int;
    final isVerified = userData["is_verified"] as bool;
    print(
      'Welcome $name to our app! Congratulations that you\'ve survived $age years! ${isVerified ? 'You are verified!' : 'VERIFY YOURSELF!!!'}',
    );
  } on TypeError catch (e) {
    print('Your data is corrupt!');
  }
}

Future<Map> fetchUserData(String userId, String authToken) async {
  // TODO: authenticate with authToken...
  // ...
  String rawData = '''
{
  "name": "Robert",
  "age": 33,
  "is_verified": false,
  "location": {
    "lat": -0.123,
    "lng": 2.432,
    "alt": 0.0
  }
}
''';
  try {
    final decoded = jsonDecode(rawData) as Map;
    //print(decoded);
    return decoded;
  } catch (e) {
    print(e);
    rethrow;
  }
}
