import 'package:flutter/material.dart';
import 'package:untitled2/MainPage.dart';

import 'RouteManager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: RouteManager.generateRoute,
      home:MainPage(),
    );
  }
}
