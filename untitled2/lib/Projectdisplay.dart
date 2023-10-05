import 'package:flutter/material.dart';

import 'ModelProdect.dart';
import 'MainPage.dart';
class ProductDetails extends StatelessWidget {

  ProductDetails({Key? key,required this.product}) : super(key: key);
  late ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Mobile  Display",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body:

      Column(children: [

        Card(
          margin: EdgeInsets.all(23),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: ClipRRect(borderRadius: BorderRadius.circular(24),
      child:Image.network("${product.thumbnail}",height: 200,)
          ),),
          Container(child: Center(child:
          Text("Mobile ${product.id}",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black)),),),
        Container(child: Center(child:
        Text(" ${product.brand}",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black)),),),

        Container(child: Center(child:
        Text("Price: ${product.price}",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black)),),),

      ],),
    );
  }
}