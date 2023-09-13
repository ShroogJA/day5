//8) Write a program to find the longest word in a text file.
import 'dart:io';

Future<String> findLongestWord(String filename) async {
  try {
    // create file and read file
    File file = new File(filename);
   String text = await file.readAsString();
   // convert file to list To facilitate the examination process
    final words = text.split(' ');
    String longestWord = '';
    //All list items are scanned and compared to find the longest word
    for (int i = 0; i < words.length; i++) {
      String word = words[i];
      if (word.length > longestWord.length) {
        longestWord = word;
      }
    }
    return longestWord;
  } on FileSystemException {
    print('the file not found');
  } catch (e) {
    print('an error: $e');
  }
  return '';
}


main() async {
  //A variable was created that saves the file path and calls the function to find the largest word
  String filename = 'she.txt'; 
  String longestWord = await findLongestWord(filename);
  print('the longest: $longestWord');
}
