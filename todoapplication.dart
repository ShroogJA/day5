import 'dart:convert';
import 'dart:io';

main() async {
  File f = new File("informaiction.json");
  String content = await f.readAsStringSync();
  List<Map<String, dynamic>> file = [];
  print("Welcome To To-Do List System");
  print("1.Add Task");
  print("2.Remove Task");
  print("3.View Task");
  print("4.Filter Tasks based on Title");

  var opperation;
  do {
    stdout.write("choose number :");
     opperation = stdin.readLineSync()!;
     switch (opperation) {
       case 1 :
       stdout.write("Enter proparty: ");
        String name = stdin.readLineSync()!;
        stdout.write("Enter proparty: ");
        String newtask = stdin.readLineSync()!;

        Map<String, dynamic> newline = {'name': newtask, 'birthday': name};
          file.add(newline);

  File fi = File('informaiction.json');
  fi.writeAsStringSync(jsonDecode(content));
      //   file.forEach((element) {
      // String task = element['name'].toString().toLowerCase();
      // String proparty = element['proparty'].toString().toLowerCase();

      // if (name.contains(searchName)) {
      //   print("${element['name']}'s birthday is ${element['birthday']}");
      
      // }
    // });
         
         break;
         case 2:
         
         break;
         case 3:
         
         break;
         case 4:
         
         break;
       default:
     }
  } while (opperation != 0);
}
