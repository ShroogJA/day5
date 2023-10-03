import 'package:flutter/material.dart';

class App2 extends StatelessWidget {
  int z=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "Material App Bar",
          style: TextStyle(color: Colors.blue),
        )),
        body: Column(children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: Colors.yellow),
                  width: 500,
                  height:200,
                ),
              ),
            ],
          ),

               Column(children: [

                 for(int i=0;i<4;i++)
                 Container(
                     padding: EdgeInsets.only(top: 3),
                     child:
                   Row( children:[
                     for(int j=0;j<4;i++)
                  Expanded(child:Container(

                    width: 40,height:90,
                  decoration: BoxDecoration(

                            color: Colors.orange,
                            shape: BoxShape.circle,

                         ) ,
                     child: Text("${z+1}"),
           )
                  )],)
                 )
        ])
    ]));
  }
}
