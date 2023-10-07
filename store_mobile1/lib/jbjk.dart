// import 'package:flutter/material.dart';
// import 'productController.dart';
//
// class HomeScreen extends StatelessWidget {
//   HomeScreen({Key? key}) : super(key: key);
//   ProductController pController = ProductController();
//   @override
//   Widget build(BuildContext context) {
//     pController.getAllProducts();
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: Text(
//           "Mobiles",
//           style: TextStyle(
//             fontSize: 30,color: Colors.black,
//           ),
//         ),
//         actions: [
//           IconButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, "/");
//               },
//               icon: Icon(Icons.shopping_cart_checkout))
//         ],
//       ),
//       body:ClipPath(
//         clipper:W,
//       )
//     );
//   }}