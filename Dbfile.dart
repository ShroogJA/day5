import 'dart:convert';
import 'dart:io';

import 'user.dart';

class DBfile {
  File f = new File("Birthday.txt");
  late String content;
  List<User> jsonContent = [];

  DBfile._DBfile();
  static DBfile? _db;
  static DBfile creatobject() {
    if (_db == null) {
      _db = DBfile._DBfile();
    }
    return _db!;
  }

  savetodt() {
    this.content = f.readAsStringSync();
    this.jsonContent = jsonDecode(content);
  }

  adddata(String name1, String brithday1) {
    jsonContent.add(User(title: name1, description: brithday1));
    List<Map> li = [];
    jsonContent.forEach((element) {
      li.add({element.title: name1, element.description: brithday1});
    });
    f.writeAsStringSync(jsonEncode(li));
  }

  removedata(String n) {
    List<Map> li = [];
    jsonContent.forEach((element) {
      if (element.title == n) {
        jsonContent.remove(element);
      }
    });

    jsonContent.forEach((element) {
      li.add({"title": element.title, "description": element.description});
    });

    f.writeAsStringSync(jsonEncode(li));
  }

  viewdata() {
    jsonContent.forEach((element) {
      print( "the title:${element.title},the description:${element.description}");
    });
  }
}
