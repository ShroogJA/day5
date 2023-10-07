import 'package:flutter/material.dart';



import 'productmodel.dart';
class ProductDetails extends StatelessWidget {

  ProductDetails({Key? key,required this.product}) : super(key: key);
  late ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(



      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text(
          "Mobile  Display",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/home");
              },
              icon: Icon(Icons.home),)
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
      body:

      Column(

        children: [

        Card(

          margin: EdgeInsets.all(23),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          child: ClipRRect(borderRadius: BorderRadius.circular(24),
              child:Image.network("${product.thumbnail}",height: 200,)
          ),),
        Container(child: Center(child:
        Text(" ${product.title}",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black)),),),
        Container(child: Center(child:
        Text(" ${product.brand}",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black)),),),

        Container(child: Center(child:
        Text(" ${product.price}",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.red)),),),
        Container(child: Center(child:
        Text(": ${product.category}",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black)),),),
        Container(child: Center(child:
        Text(" ${product.description}",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black)),),),
        Container(child: Center(child:
        Text(" ${product.stock}",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black)),),),

      ],),
    );
  }
}