import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String selectedSubject='c++';
  List<String> subjects = ['java', 'c++', 'Dart'];

  Map<String, List<String>> subjectInfo = {
    'java': ['cours1', '22'],
    'مادة 2': ['cours 4', '25'],
    'مادة 3': ['cours 7', ' 28'],
  };

  List<String> selectedSubjectInfo = [];

  void onDropdownChanged(String value) {
    setState(() {
      selectedSubject = value;
      selectedSubjectInfo = subjectInfo[value]!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ADD Widgets Dynamically'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DropdownButton<String>(
                value: selectedSubject,
                hint: Text('shoose subject'),
                items: subjects.map((String subject) {
                  return DropdownMenuItem<String>(
                    value: subject,
                    child: Text(subject),
                  );
                }).toList(),
                onChanged:onDropdownChanged,
              ),
              SizedBox(height: 16.0),
              TextButton(
                onPressed: () {

                },
                child: Text('get info'),
              ),
              SizedBox(height: 16.0),
              Column(
                children: selectedSubjectInfo.map((String info) {
                  return Text(info);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}