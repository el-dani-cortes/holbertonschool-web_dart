void outer(String name, String id) {
  var s_name = name.split(' ');

  String inner() {
    return ('Hello Agent ${s_name[1].substring(0, 1)}.${s_name[0]} your id is ${id}');
  }

  print(inner());
}
