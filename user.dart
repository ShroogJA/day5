import 'Dbfile.dart';

class User {
  late String title;
  late String description;
  User({required this.title, required this.description});
  
    add() {
      DBfile db = DBfile.creatobject();
     db.adddata(title, description);
    }

   veiw() {
    DBfile db = DBfile.creatobject();
    db.viewdata();
    }

  remove(String name) {
    DBfile db = DBfile.creatobject();
    db.removedata(name);
  }
}

