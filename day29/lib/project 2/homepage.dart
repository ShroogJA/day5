import 'package:day29/project%202/NEWS.dart';
import 'package:flutter/material.dart';

import 'Metches.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text("News",style: TextStyle(color: Colors.black,fontSize: 30)),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.pause),color:Colors.black,
              )  ],
            bottom: TabBar(tabs: [
              Tab(
                child: Text("For you",style: TextStyle(color: Colors.black)),
              ),
              Tab(
                child: Text("Latest",style: TextStyle(color: Colors.black)),

              ),
              Tab(
                child: Text("Transfer",style: TextStyle(color: Colors.black)),

              ),
              Tab(
                child: Text("Leagues",style: TextStyle(color: Colors.black)),
              ),
            ]),
          ),
          // drawer: SafeArea(
          //   child: Drawer(
          //     child: ListTile(
          //       title: Text("Home",style: TextStyle(color: Colors.black)),
          //       subtitle: Text("go to page home",style: TextStyle(color: Colors.black),),
          //       trailing: Container(
          //         width: 30,
          //         height: 30,
          //         decoration: BoxDecoration(
          //           color: Colors.green,
          //           borderRadius: BorderRadius.circular(15),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          body: TabBarView(
            children: [
             Container(child: Text("Foryou",style: TextStyle(color: Colors.black,fontSize: 40)),),
              Container(child: Text("Leatest",style: TextStyle(color: Colors.black,fontSize: 40)),),
              News(),
              Container(child: Text("Leagues",style: TextStyle(color: Colors.black,fontSize: 40)),),
            ],
          ),
        ));
  }
}
