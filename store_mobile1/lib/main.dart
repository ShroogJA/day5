import 'package:flutter/material.dart';

import 'routemanager.dart';


void main(){
  runApp(StoreEntry());
}

class StoreEntry extends StatelessWidget {
  const StoreEntry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}
