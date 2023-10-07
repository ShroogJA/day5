import 'package:flutter/material.dart';
import 'package:store_mobile1/productmodel.dart';

import 'SoppingCardController.dart';
import 'productController.dart';

class HomeScreen extends StatelessWidget {
  ShoppingCardController shop = ShoppingCardController();
  HomeScreen({Key? key}) : super(key: key);
  List<ProductModel> card = [];
  ProductController pController = ProductController();
  @override
  Widget build(BuildContext context) {
    pController.getAllProducts();
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
                  Navigator.pushNamed(context, "/shopping", arguments: card);
                },
                icon: Icon(Icons.shopping_cart_checkout))
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
        body:   ListView.builder(
    itemCount: pController.products.length,
        itemBuilder: (ctx, index) {
          return InkWell(
            child: Card(
              margin: EdgeInsets.only(top: 12),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.topCenter,
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        right: 10,
                        child: Container(

                          width: 60,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(25)),
                          child: Center(
                            child: Text(
                              "%${pController.products[index].discountPercentage}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24),
                              child: Image.network(
                                "${pController.products[index].thumbnail}",
                                height: 100,
                              ),
                            ),
                          ),

                          Expanded(
                            child: Container(
                              height: 140,
                              decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ListTile(
                                minLeadingWidth: 200,
                                title: Text(
                                    "\n  ${pController.products[index].title}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                                trailing: Text(
                                    "\n\n ${pController.products[index].price} SRS ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.redAccent)),
                                subtitle: Text(
                                  "  ${pController.products[index].brand} \n  ${pController.products[index].category}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    IconButton(
                        onPressed: () {
                          card.add(pController.products[index]);
                        },
                        icon: Icon(
                          Icons.shopping_cart_checkout,
                          color: Colors.amber,
                          size: 30,
                        )),
                  ]),
                ],
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/details",
                  arguments: pController.products[index]);
            },
          );
        }));
  }
}
