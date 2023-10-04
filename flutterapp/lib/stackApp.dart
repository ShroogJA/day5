import 'package:flutter/material.dart';

class StackApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Material App Bar",
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(children: [
      Container(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 300,width: 500,
         decoration: BoxDecoration(
             color: Colors.deepPurpleAccent,
           borderRadius: BorderRadius.only(
             bottomLeft: Radius.circular(40),
             bottomRight: Radius.circular(40),

           )
         ),
          ),
          Container(
            height: 350,width: 500,
            decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),

                )
            ),
          ),

        Positioned(
            top:250,
            child:  Container(
              height: 200,width: 350,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),

                  )
              ),
            ),
          ),
          Positioned(
            top:100,
            child:  Container(
              width: 100,height: 100,
              child:CircleAvatar(
               backgroundColor:Colors.white.withOpacity(0.5),
              ),

                  )
              ),



        ],
      ),
      )
      ],
    )





    );
  }
}
