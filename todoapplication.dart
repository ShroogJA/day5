import 'dart:convert';
import 'dart:io';
 File f = new File("birthdays.json");
  String content =  f.readAsStringSync();
  List<Map<String, dynamic>> jsonContent = jsonDecode(content).cast<Map<String, dynamic>>();
main()  {

 print("====================================================");
 print("Welcome To To-Do List System");
 
 print("====================================================");
  
  print("1.Add Task");
  print("2.Remove Task");
  print("3.View Task");
  print("4.Filter Tasks based on Title");
   print("====================================================");

  var opperation='';
  do {
    stdout.write("choose number :");
     opperation = stdin.readLineSync()!;
     switch (opperation) {
         case '1':
         addTask();
         break;
         case '2':
         removeTask();
         break;
         case' 3':
         viewTask();
         break;
         case '4':
         filterTask();
         break;
       default:
     }
  } while (opperation != 0);
}
  
void addTask(){
  stdout.write("Enter task title : ");
  String title =stdin.readLineSync()!;

  stdout.write("Enter task description : ");
  String description = stdin.readLineSync()!;


Map<String, dynamic> newline = {'title': title, 'description': description};
jsonContent.add(newline);

File file = File("birthdays.json");
file.writeAsStringSync(jsonEncode(jsonContent));
  
  print("Added Successfully");
  print("====================================================");
}

void removeTask(){
  if (jsonContent.isEmpty){
    print("there is no any task!");
    print("====================================================");

    return;
  }
 
  
  viewTask();

  stdout.write("Enter the title to remove it :");

  String? title = stdin.readLineSync();
      print(title);
  if (jsonContent.removeAt(jsonContent) => jsonContent){
    jsonContent.remove(title);
    
    print("Removed $title Successfully");
    print("====================================================");


  }else{
    print("input Erorr!!");
    print("====================================================");

  }

  }

void viewTask(){
  if (jsonContent.isEmpty){
    print("====================================================");

    print("there is no any task!");
    print("====================================================");

    return;
  }
  else{
   print("====================================================");

   print("tasks:");

   print(jsonContent);

print("====================================================");
  }
} 
void filterTask(){
 stdout.write("Filter the List if the Title Contains: ");
 String nameFilter = stdin.readLineSync()!;
 

     nameFilter = stdin.readLineSync()!;
  for (var i in jsonContent){
  if((i["title"]).toLowerCase().contains(nameFilter)){
    print("${i["title"]} : ${i["description"]}");
  }
  

    } 
  print("====================================================");

  }