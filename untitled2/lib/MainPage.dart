import 'package:flutter/material.dart';

import 'ControllerProdect.dart';
import 'ModelProdect.dart';

class MainPage extends StatelessWidget {
  ProductController controller = ProductController();
  List<ProductModel> prodectvis=[];
  @override
  Widget build(BuildContext context) {
    controller.getAllProducts();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Mobile List",
            style: TextStyle(color: Colors.black),
          ),
        ),
        // body: ListTile(
        //   title: Text("Hotel${index+1}"),
        //   subtitle:Text("Hotel ${index+1} descripition"),
        // ),

        body: ListView.builder(
            itemCount: controller.products.length,
            itemBuilder: (ctx, index) {
             return Column(children: [
               InkWell(
             child: ListTile(

             title: Text("Mobile ${index + 1}",
                 style: TextStyle(
                     fontWeight: FontWeight.bold, color: Colors.black)),
              trailing:    Card(

              // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: ClipRRect(borderRadius: BorderRadius.circular(15),
              child: Image.network("${controller.products[index].thumbnail}",),
              ),),


              subtitle: Text(
              "${controller.products[index].brand}",
              style: TextStyle(fontWeight: FontWeight.bold),
              ),

              ),


             onTap: () {

               Navigator.pushNamed(context, "/details", arguments: controller.products[index]);
               prodectvis.add(controller.products[index]);
               if(prodectvis.length>=3)
                 {
                   for(int i=0;i<prodectvis.length;i++)
                   Navigator.pushNamed(context, "/detailsvisit", arguments: prodectvis);
                 }
             }
            ),
             Divider(),
             ],);

            }));
  }
}
