

import 'package:flutter/material.dart';
import 'home.dart';
import 'page_not_found.dart';
import 'product_detalis.dart';
import 'productmodel.dart';
import 'shoppingCard.dart';
import 'splachScreen.dart';

class RouteManager{
  static Route<dynamic>? generateRoute(RouteSettings settings){
    switch(settings.name){

      case '/shopping':{
       List<ProductModel> productCard=settings.arguments as List<ProductModel>;
        return MaterialPageRoute(builder: (ctx){
        return ShoppingCard(card: productCard,);

      });


      }
      case '/':{return MaterialPageRoute(builder: (ctx){
        return SplashScreen();

      });


      }
      case '/home':{return MaterialPageRoute(builder: (ctx){
        return HomeScreen();

      });

      }

      case '/details':{
        ProductModel product=settings.arguments as ProductModel;
        return MaterialPageRoute(builder: (ctx){
          return ProductDetails(product: product,);

        });
      }
      default:{
        return MaterialPageRoute(builder: (ctx){
          return NotFoundScreen();

        });}
    }
  }
}