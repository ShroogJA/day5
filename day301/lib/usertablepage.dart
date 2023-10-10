

import 'package:flutter/material.dart';

import 'profile.dart';

class TableUserPage extends StatelessWidget {
  List<Profile> profile;
   TableUserPage({super.key,required this.profile});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Table user'),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pushNamed(context, "/home");

            },
          ),
        ],
      ),
      body: ListView.builder(
    itemCount: profile.length,
    itemBuilder: (BuildContext context, int index) {
      // صف العناوين
      return Table(
        border: TableBorder.all(),
        children: [
          TableRow(
            decoration: BoxDecoration(color: Colors.blue),
            children: [
              TableCell(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('${profile[index].name}',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('${profile[index].phone}',
                      style: TextStyle(color: Colors.white)),
                ),
              ),

            ],
          ),
        ],
      );
    })
    );
  }}

