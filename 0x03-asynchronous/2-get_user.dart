// Use try/catch block to catch error when printing user's string representation
import "2-main.dart";

// async modifier not asked for in prototype but defines async function
Future<void> getUser() async {
  // Try/catch block to print return of fetchUser
  try {
    print(await fetchUser());
  } catch (e) {
    print("error caught: $e");
  }
}
