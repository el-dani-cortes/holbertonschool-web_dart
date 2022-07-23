class User {
  int id = 0;
  String name = "";
  int age = 0;
  double height = 0.0;

  User({required this.id, required this.name, required this.age, required this.height});

  String showName() {
    return "Hello $name";
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
    );
  }

  // instance method toJson()
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  // instance method toString()
  @override
  String toString() {
    return 'User(id : $id ,name: $name,  age: $age, height: $height)';
  }
}


class Password {
  var _password = "";

  Password({required String password}) : _password = password;

  set password(String password) {
    _password = password;
  }

  String get password => _password;

  bool isValid() {
   if (
     ((password.length >= 8) && (password.length <= 16))
    && (password.contains(new RegExp(r'[A-Z]')))
    && (password.contains(new RegExp(r'[a-z]')))
    && (password.contains(new RegExp(r'[0-9]')))) {
     return true;
   } else {
     return false;
   }
  }

 @override
  String toString() {
    return 'Your Password is: $password';
  }
}