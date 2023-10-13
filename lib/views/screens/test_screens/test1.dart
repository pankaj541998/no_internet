import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import '../../../internet_connectivity/api.dart';
import '../../../internet_connectivity/internet_connectivity_model.dart';
import '../no_internet.dart';

class TestOne extends StatefulWidget {
  const TestOne({super.key});

  @override
  State<TestOne> createState() => _TestOneState();
}

class _TestOneState extends State<TestOne> {
  ConnectivityResult _connectionStatus = ConnectivityResult.none;

  @override
  void initState() {
    super.initState();

    // Subscribe to the connectivity stream to listen for changes in connectivity
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      setState(() {
        _connectionStatus = result;
      });
      print('check internet $_connectionStatus');
    });

    // Start periodic connectivity check (every 5 seconds in this example)
    // Timer.periodic(Duration(seconds: 5), (timer) {
    //   _checkConnectivity();
    // });

    // Get initial connectivity status
    _checkConnectivity();
  }

  Future<void> _checkConnectivity() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    setState(() {
      _connectionStatus = connectivityResult;
    });
    if (_connectionStatus == ConnectivityResult.none) {
      print('Please check your internet');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children:[
      const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              // height: 100,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff000000).withOpacity(0.2),
                    blurRadius: 8,
                    spreadRadius: 2,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: FutureBuilder<InternetConnectiviyModel>(
                future: ProductService().fetchProduct(),
                builder: (context, snapshot) {
                  if(_connectionStatus == ConnectivityResult.none){
                    return noInternet();
                  }else{

                  
                    if (snapshot.connectionState == ConnectionState.done &&
                        snapshot.hasData) {
                      var data = snapshot.data;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Name: ${data!.title}'),
                          const SizedBox(height: 10),
                          Text('Description: ${data.description}'),
                          const SizedBox(height: 10),
                          Text('Price: ${data.price}'),
                          const SizedBox(height: 10),
                          Text('Rating: ${data.rating}'),
                          const SizedBox(height: 10),
                          Image.network(data.thumbnail),
                        ],
                      );}
                    }
                  return const CircularProgressIndicator();
                },
              ),
            ),
    ]),);
  }
}