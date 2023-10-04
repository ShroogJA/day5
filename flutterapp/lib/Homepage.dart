import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.blue,
        title: Text(
          "Home page ",
          style: TextStyle(color: Colors.black),
        ),
      ),
        drawer:Drawer(),
      floatingActionButton: FloatingActionButton(onPressed: (){
        print("flutter App");
      },child:Icon(Icons.add),
      ),
      body:Column( children: [


    Row( children: [

      Expanded(child: Container(
          decoration: BoxDecoration(
              color: Colors.blueGrey
          ),
          padding: EdgeInsets.only(left: 0.0,right: 0.0),
          width: 200,height: 100,
          child:Center(child:Text("Hellow SHROOG!",style: TextStyle(color: Colors.white),) ,)
      ) ,),

      Expanded(child: Container(
          decoration: BoxDecoration(
              color: Colors.black12
          ),
          padding: EdgeInsets.only(left: 0.0,right: 0.0),
          width: 200,height: 100,
          child:Center(child:Text("Hellow SHROOG!",style: TextStyle(color: Colors.white),) ,)
      ) ,),
      Expanded(child:  Container(
          decoration: BoxDecoration(
              color: Colors.black
          ),
          padding: EdgeInsets.only(left: 0.0,right: 0.0),
          width: 200,height: 100,
          child:Center(child:Text("Hellow SHROOG!",style: TextStyle(color: Colors.white),) ,)
      ) ,)
    ],)
        ,ElevatedButton(onPressed: (){}, child: Text("Login"))
     ] )

    );
  }
}