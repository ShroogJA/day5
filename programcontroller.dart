import 'dart:io';

import 'filemanagement.dart';
import 'programsmodel.dart';

class ProgramController {
  FileManagement f = FileManagement.Instancefile(fileName: '');
String fileContents = f.readAsStringSync();
  addprogram() {
    Program p = Program();
    stdout.write('Enter task title :');
    p.title = stdin.readLineSync()!;
    stdout.write('Enter task description :');
    p.fees =int.parse( stdin.readLineSync()!) ;
    List list = list.map((e) => {'title' : e.title, 'description' : e.fees}).toList();
 
    
  }


}
