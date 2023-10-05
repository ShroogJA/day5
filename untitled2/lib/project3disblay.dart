import 'package:flutter/material.dart';

import 'ModelProdect.dart';

class ProducthreetDetails extends StatelessWidget {
  List<ProductModel > products=[];
  ProducthreetDetails({Key? key,required this.products}) : super(key: key);


  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Mobile List",
            style: TextStyle(color: Colors.black),
          ),
        ),


        body: ListView.builder(
            itemCount: products.length,
            itemBuilder: (ctx, index) {
              return Column(children: [

                    ListTile(

                      title: Text("Mobile ${index + 1}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black)),
                      trailing:    Card(

                        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        child: ClipRRect(borderRadius: BorderRadius.circular(15),
                          child: Image.network("${products[index].thumbnail}",),
                        ),),


                      subtitle: Text(
                        "${products[index].brand}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),

                    ),


                Divider(),
              ],);

            }));
  }
}