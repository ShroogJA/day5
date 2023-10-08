
import 'package:flutter/material.dart';

class AddTextWidget extends StatefulWidget {
  const AddTextWidget({super.key});

  @override
  State<AddTextWidget> createState() => _AddTextWidgetState();
}

class _AddTextWidgetState extends State<AddTextWidget> {
  @override
  Widget build(BuildContext context) {
    int i=1;
    return SafeArea(child: Scaffold(
       body: Column(children: [
         SizedBox(height:30,),
         Text("ADD Widgets Dynamically",style: TextStyle(fontSize:30)),
         TextButton(onPressed: (){
           Container(child: Text("Text $i ",style: TextStyle(fontSize:30)),);
           i++;
         }, child:Text("ADD TEXT WIDGET"))
       ],),
    ));
  }
}
