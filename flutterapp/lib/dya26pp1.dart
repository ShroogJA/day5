import 'package:flutter/material.dart';

class Appcolor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Material App Bar",
            style: TextStyle(color: Colors.black87),
          )),
      body: Column(
        children: [

          Row(children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                color: Colors.pink,
              ),

              height: 392,
              child: Center(
                child: Text(
                  "1",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 50,
                  ),
                ),
              ),
            )),
          ]),
          // pink color
          //-----------------------------------------------------------
          Row(children:[
          Container(
            height: 394,
            width: 112,
             decoration: BoxDecoration(
              color: Colors.teal,
            ),
              child: Center(
              child: Text(
                "2",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 50,
                ),
              ),
          ),),
          Expanded(child:Column(children: [

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //     children: [

            Container(
              decoration: BoxDecoration(
                color: Colors.yellow,
              ),
              width:300,
              height: 200,
              child: Center(
                child: Text(
                  "2",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 50,
                  ),
                ),
              ),),
            // ]),
            //----------------------------------------------------------
            // Row(
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: [

            Container(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              width:300,
              height: 194,
              child: Center(
                child: Text(
                  "3",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 50,
                  ),
                ),
              ),),
          ]), )
          // ],)


        ],
      ),
    ]),
    ));
  }
}
