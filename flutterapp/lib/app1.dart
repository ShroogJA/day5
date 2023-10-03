import 'package:flutter/material.dart';

class App1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Material App Bar",style:TextStyle(color: Colors.black),),
   ),
       body: Column(  children: [ Column(children:[
         Container(
             decoration: BoxDecoration(
                 color: Colors.blue
             ),

             width: 500,height:255,

         ) ,
       Container(
               decoration: BoxDecoration(
                   color: Colors.red
               ),

               width: 500,height:255,
           ) ,
         ] ),
         Row(children:[
           Expanded(child:Container(
             decoration: BoxDecoration(
                 color: Colors.blue
             ),

             width: 500,height:90,

           ) , ),
           Expanded(child:Container(
             decoration: BoxDecoration(
                 color: Colors.black
             ),

             width: 500,height:90,

           ) , ),
           Expanded(child:Container(
             decoration: BoxDecoration(
                 color: Colors.yellow
             ),

             width: 500,height:90,

           ) , )
         ] ),

    ] )
   );
  }

}
