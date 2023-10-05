
import 'package:flutter/material.dart';
import 'package:untitled2/MainPage.dart';
import 'package:untitled2/project3disblay.dart';

import 'ModelProdect.dart';
import 'Projectdisplay.dart';
class RouteManager{
  static Route<dynamic>? generateRoute(RouteSettings settings){
    switch(settings.name){
      case '/home':{return MaterialPageRoute(builder: (ctx){
        return MainPage();

      });

      }
      case '/details':{
        ProductModel product=settings.arguments as ProductModel;
        return MaterialPageRoute(builder: (ctx){
          return ProductDetails(product: product,);

        });
      }
      case '/detailsvisit':{
       List< ProductModel> product=settings.arguments as List<ProductModel> ;
        return MaterialPageRoute(builder: (ctx){
          return ProducthreetDetails(products:product,);

        });
      }
      // default:{
      //   return MaterialPageRoute(builder: (ctx){
      //     // return PageNotFound();
      //
      //   });}
    }
  }
}