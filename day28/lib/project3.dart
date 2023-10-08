import 'package:flutter/material.dart';

class Task {
  String title;
  String description;

  Task(this.title, this.description);
}

class TaskApp extends StatefulWidget {
  @override
  _TaskAppState createState() => _TaskAppState();
}

class _TaskAppState extends State<TaskApp> {
  List<Task> tasks = [];
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  bool isEditing = false;
  late int editingIndex;

  void addTask() {
    setState(() {
      String title = titleController.text;
      String description = descriptionController.text;
      if (isEditing) {
        tasks[editingIndex].title = title;
        tasks[editingIndex].description = description;
        isEditing = false;
        titleController.text = '';
        descriptionController.text = '';
      } else {
        tasks.add(Task(title, description));
        titleController.clear();
        descriptionController.clear();
      }
    });
  }

  void deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  void editTask(int index) {
    Task task = tasks[index];
    editingIndex = index;
    titleController.text = task.title;
    descriptionController.text = task.description;
    setState(() {
      isEditing = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    String buttonText = isEditing ? 'Modifier' : 'Add';
    return Scaffold(
      appBar: AppBar(
        title: Text('Task App'),
      ),
      body:

     ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          Task task = tasks[index];
          return ListTile(
            title: Text(task.title),
            subtitle: Text(task.description),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () => editTask(index),
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => deleteTask(index),
                ),
              ],
            ),
          );
        },
      ),
      bottomSheet: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Title Task'),
            ),
            TextFormField(
              controller: descriptionController,
              decoration: InputDecoration(labelText: 'Describtion Task'),
            ),
            ElevatedButton(
              onPressed: addTask,
              child: Text(buttonText),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addTask,
        child: Icon(Icons.add),
      ),

    );
  }
}