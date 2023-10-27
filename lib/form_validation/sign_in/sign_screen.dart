// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  String title;
  SignInScreen({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: ListView(
          children: [
            Text('Error will show here.'),
            TextField(
              decoration: InputDecoration(hintText: "Email Address"),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(hintText: "Password"),
            ),
            SizedBox(height: 20),
            CupertinoButton(
              child: Text("Sign In"),
              color: Colors.grey,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
