// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'sign_in/sign_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Spacer(),
              Text(
                'Example',
                style: TextStyle(
                  fontSize: 55,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              CupertinoButton.filled(
                child: Text('Sign In with Email'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignInScreen(title: 'Sign In with Email',)
                    ),
                  );
                },
              ),
              SizedBox(height: 10),
              CupertinoButton.filled(
                child: Text('Sign In with Google'),
                onPressed: () {},
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
