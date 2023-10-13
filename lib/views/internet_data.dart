import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import '../internet_connectivity/internet_connectivity.dart';
import 'screens/no_internet.dart';

class MyHomePageNew extends StatefulWidget {
  const MyHomePageNew({super.key});

  @override
  _MyHomePageNewState createState() => _MyHomePageNewState();
}

class _MyHomePageNewState extends State<MyHomePageNew> {
  bool hasInternet = true;

  @override
  void initState() {
    super.initState();
    checkInternetConnection();
  }

  Future<void> checkInternetConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      setState(() {
        hasInternet = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return hasInternet ? InternetConnectiviy() : const NoInternetScreen();
  }
}

class MyRegularScreen extends StatelessWidget {
  const MyRegularScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: const Center(
        child: Text('Regular screen content goes here.'),
      ),
    );
  }
}