import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(
        key: key,
        title: const Text('Api Handlng'),
      ),
      body: const Center(
        child:  Text('Welcome to the home screen!'),
      ),
    );
  }
}
