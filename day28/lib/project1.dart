

import 'package:flutter/material.dart';

class Projectconvert extends StatefulWidget {
  const Projectconvert({super.key});

  @override
  State<Projectconvert> createState() => _ProjectconvertState();
}

class _ProjectconvertState extends State<Projectconvert> {
  double resulte=0;
  int group=1;
  var numint=TextEditingController();
  late int num=int.parse(numint.text);

  @override
  Widget build(BuildContext context) {

    return SafeArea(child: Scaffold(
      body:Column(children: [
        SizedBox(height: 20,),
        Center(child: Text("CURRENCY CONVERTER  😎",style: TextStyle(fontSize:30),),),
        SizedBox(height: 50,),
        TextFormField(
            controller: numint,
            validator: (x) =>!x!.isEmpty ? "Enter value" : null,
            decoration: InputDecoration(

              hintText: "enter value",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)),
            )),
         Row(children: [Radio(value: 1, groupValue: group, onChanged:(v){
           group=v!;
           resulte= num/350;
           setState(() {

           });

         },
         ),Text("SRS"),
           Radio(value:2, groupValue: group, onChanged:(v){
             group=v!;
             resulte= num*350;
             setState(() {

             });

           },
           ),Text("RYM"),
         ],) ,
        Center(child: Container(child: Text("$resulte",style: TextStyle(fontSize: 40),),),)
       ] ,)

    )
     );
  }
}
