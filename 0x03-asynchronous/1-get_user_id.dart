// Return value at id key from fetchUserData
import 'dart:convert';
import '1-main.dart';

Future<String> getUserId() {
  // user returned as string, so convert to json then return id (which is String)
  return fetchUserData().then((user) => json.decode(user)['id']);
}
