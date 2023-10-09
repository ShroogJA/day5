import 'package:flutter/material.dart';

import 'SearchPage.dart';

void main() {
  runApp( MyApp1());
}

class MyApp1 extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: SearchPage(),
    );}}