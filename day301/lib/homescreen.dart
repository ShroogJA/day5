import 'package:day301/profile.dart';
import 'package:flutter/material.dart';

import 'usertablepage.dart';

class HomeScreen extends StatefulWidget {

  HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Profile> profile = [];
  final formKey = GlobalKey<FormState>();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  void addprofile() {
    if (formKey.currentState!.validate()) {
      final name = namecontroller.text;
      final phone = phonecontroller.text;
      final password = passwordcontroller.text;

      profile.add(Profile(name,phone,password));

      namecontroller.clear();
      phonecontroller.clear();
      passwordcontroller.clear();
      confirmpassword.clear();

      setState(() {});
    }
  }

  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter name';
    }
    if (value.length < 3) {
      return 'The name most be more than 3 characters';
    }
    return null;
  }

  String? validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter phone number';
    }
    if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
      return 'Enter number only';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter password';
    }
    if (value.length < 6) {
      return 'must be at least six characters';
    }
    return null;
  }

  String? validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Confirm your password';
    }
    if (value != passwordcontroller.text) {
      return 'Password is wrong';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("ADD Widgets Dynamically"),
            actions: [
              IconButton(
                icon: Icon(Icons.table_chart),
                onPressed: () {
                  Navigator.pushNamed(context, "/table", arguments: profile);

                },
              ),
            ],
          ),
          body: Container(
            margin: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                autovalidateMode: AutovalidateMode.always,
                child: Column(
                  children: [
                    TextFormField(
                      controller: namecontroller,
                      decoration: InputDecoration(
                          labelText: 'Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                      validator: validateName,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: phonecontroller,
                      validator: validatePhone,
                      decoration: InputDecoration(
                        labelText: 'Phone',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),

                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: passwordcontroller,
                      obscureText: true,
                      validator: validatePassword,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),


                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: confirmpassword,
                      obscureText: true,
                      validator: validateConfirmPassword,
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),

                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            namecontroller.clear();
                            phonecontroller.clear();
                            passwordcontroller.clear();
                            confirmpassword.clear();

                          },
                          child: Text("reset"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            namecontroller.clear();
                          },
                          child: Text("clear name only"),
                        ),
                      ],
                    )
                    , FloatingActionButton(
                      onPressed:(){
                        addprofile();
                      },
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
