import 'package:day301/profile.dart';
import 'package:day301/usertablepage.dart';
import 'package:flutter/material.dart';

import 'homescreen.dart';

class RouteManager{
  static Route<dynamic>? generateRoute(RouteSettings settings){
    switch(settings.name){

      case '/table':{
        List<Profile> profile=settings.arguments as List<Profile>;
        return MaterialPageRoute(builder: (ctx){
          return TableUserPage(profile: profile,);

        });


      }
      case '/home':{return MaterialPageRoute(builder: (ctx){
        return HomeScreen();

      });


      }

    }
  }
}