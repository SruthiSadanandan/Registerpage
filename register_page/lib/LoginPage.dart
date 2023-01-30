// ignore: duplicate_ignore
// ignore: file_names

// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: 300,
          height: 300,
          // color: Colors.red,
          decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.all(
                color: Colors.black,
                width: 10,
                // borderRadius:BorderRadius())
              )),
          child: Center(
            child: Text('Login Page'),
          )),
    );
  }
}
