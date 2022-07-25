// Make get request to return first quote by character corresponding to id
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> generateQuote(id) async {
  String url = "https://breakingbadapi.com";
  try {
    // Send get request to url at actual endpoint
    var response = await http.get(Uri.parse("$url/api/quotes/$id"));
    // Decode response body to json and first first element in list
    var quote = json.decode(response.body)[0];
    String quoteText = quote['quote'];
    String quoteAuthor = quote['author'];
    // Print quote
    return "$quoteAuthor : $quoteText";
  } catch (e) {
    return "There are no quotes";
  }
}
