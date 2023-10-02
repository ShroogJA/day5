import 'dart:io';

class FileManagement{
  late File file;
  
  static FileManagement? _instancefile;

  static FileManagement Instancefile({String fileName=''}) {
    if(_instancefile == null) {
      _instancefile = FileManagement._internal(fileName);
    }
    return _instancefile!;
  }
  
  FileManagement._internal(String fileName) {
      file = File(fileName);
  }

 
}