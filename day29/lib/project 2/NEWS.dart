

import 'package:flutter/material.dart';

class News extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<String> name=["Hugo Lioris,","Cristiano Ronaldo","Ander Ter Stegen"];
    List<Color>color=[Color(0xFFFFF59D),Color.fromRGBO(144, 238, 144, 1.0),Color.fromRGBO(238, 144, 238, 1.0)];

    return Scaffold(
     
      body: Column(children: [
        SizedBox(height: 10,),
        Expanded(child: ListView.builder(
            itemCount:3,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Stack(
                  alignment: Alignment.topCenter,
                  clipBehavior: Clip.none,
                  children:[Container(
                padding: EdgeInsets.all(30),
                margin: EdgeInsets.all(10),

                width: 180,
                height: 300,
                decoration: BoxDecoration(
                  color:color[index],
                  borderRadius: BorderRadius.circular(40),

                ),

               child: Column(children: [
                 Row(

                   children: [
                     Icon(Icons.star),
                     Text("4.5"),
                     Container(width: 100,height: 20, child:Text(" .Jersey "),),
                  Expanded(child:Container( alignment: Alignment.topRight, child: Text("Sunday"),))
                   ],
                 ),
                 Container( alignment: Alignment.topLeft,
                     child:Text(name[index],style: TextStyle( fontFamily: '',fontSize: 25),)),
                 SizedBox(height: 100,),
                 Row(
                   children: [

                      CircleAvatar(
                       radius: 20,
                       backgroundImage: AssetImage('image/FLOWER.jpg'),
                     ),
                     SizedBox(width: 15,),
                     Icon(Icons.east_outlined),
                     SizedBox(width: 10,),
                     CircleAvatar(
                       radius: 20,
                       backgroundImage: AssetImage('image/logo.jpg'),
                     ),

                   ],
                 )

               ],),

              ),
                  //   Expanded(child:Positioned(child: Image.asset(""),height: 70,
                  //
                  // ) )
              ]);
            }
        ),

        ) ,
      ],)
    );
  }
}
