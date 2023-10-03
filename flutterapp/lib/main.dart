
import 'package:flutter/material.dart';
import 'package:project1/Homepage.dart';
import 'package:project1/app1.dart';
import 'package:project1/app2.dart';

void main(){
  runApp(MainApp());

}
class MainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: App1(),
   );
  }

}