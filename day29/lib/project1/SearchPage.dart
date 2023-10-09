
import 'dart:math';

import 'package:day29/project1/personcontroller.dart';
import 'package:flutter/material.dart';

import 'personmodel.dart';

List<PersonModel> personall =PersonController().addPerson();
class SearchPage extends StatefulWidget {

  @override
  State<SearchPage> createState() => _SearchPageState();

}

class _SearchPageState extends State<SearchPage> {




List<PersonModel> displyfilter=personall;
void update(String value)
{

  setState(() {
  displyfilter=personall.where((element) => element.email.contains(value.toLowerCase())).toList();

  });

}
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(title: Text("Search"),

      ),
      body: Column(children: [
        Text("Search Bar",style: TextStyle(color: Colors.black),),
        SizedBox(height: 20.0,),
        TextFormField(
          onChanged: (value)=> update(value),
            decoration: InputDecoration(
              label: Text("Search"),
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)),

            )),

       Expanded(child: ListView.builder(
           itemCount:displyfilter.length,
           shrinkWrap: true,
           itemBuilder: (context, index) {
             return ListTile(
               title: Text(displyfilter[index].name),
               subtitle: Text(displyfilter[index].email),
             );
           }
       )) ,



      ],)

    );
  }
}
