// Print names returns from API call
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printBbCharacters() async {
  String url = 'https://breakingbadapi.com/api/characters';
  try {
    // Send get request to url
    var response = await http.get(Uri.parse(url));
    // Decode response body to json
    var characters = json.decode(response.body);
    // Print each character in list
    characters.forEach((character) => print(character['name']));
  } catch (e) {
    print("error caught: $e");
  }
}
