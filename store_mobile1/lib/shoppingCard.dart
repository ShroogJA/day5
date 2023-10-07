import 'package:flutter/material.dart';
import 'package:store_mobile1/SoppingCardController.dart';
import 'package:store_mobile1/productController.dart';

import 'productmodel.dart';

class ShoppingCard extends StatelessWidget {
   ShoppingCard({Key? key,required this.card}) : super(key: key);
ShoppingCardController shop=ShoppingCardController();
List<ProductModel> card=[];
  @override
  Widget build(BuildContext context) {
    card.forEach((element) {
      shop.addProductToCard(element);
    });
    shop.productcard;


   return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.black54,
         title: Text(
           "Mobiles",
           style: TextStyle(
             fontSize: 20,
           ),
         ),
         actions: [
           IconButton(
               onPressed: () {
                 Navigator.pushNamed(context, "/home");
               },
               icon: Icon(Icons.home))
         ],
       ),
       drawer: Drawer(
           child: Column(
             children: [
               UserAccountsDrawerHeader(
                 currentAccountPicture: CircleAvatar(
                   backgroundImage: AssetImage("image/FLOWER.jpg"),
                 ),
                 accountEmail: Text("@gmail.com"),
                 accountName: Text("User Account"),
               ),
               ListTile(
                 leading: Icon(Icons.home),
                 title: Text("Home Page"),
                 onTap: () {
                   Navigator.pushReplacementNamed(context, "/home");
                 },
               ),
               ListTile(
                 leading: Icon(Icons.shopping_cart_checkout),
                 title: Text("Card"),
                 onTap: () {
                   Navigator.pushReplacementNamed(context, "/shopping");
                 },
               ),
               ListTile(
                 leading: Icon(Icons.lock),
                 title: Text("Login"),
                 onTap: () {
                   Navigator.pushReplacementNamed(context, "/");
                 },
               ),
             ],
           )),


       body: ListView.builder(
           itemCount: shop.productcard.length,
           itemBuilder: (ctx, index) {
             return Column(children: [

               ListTile(

                 title: Text(" ${shop.productcard[index].title}",
                     style: TextStyle(
                         fontWeight: FontWeight.bold, color: Colors.black)),
                 trailing:    Card(

                   // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                   child: ClipRRect(borderRadius: BorderRadius.circular(15),
                     child: Image.network("${shop.productcard[index].thumbnail}",),
                   ),),


                 subtitle: Text(
                   "${shop.productcard[index].brand}",
                   style: TextStyle(fontWeight: FontWeight.bold),
                 ),

               ),


               Divider(),
             ],);

           }
           ));

  }

}
