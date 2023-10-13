import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';


class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 200.0,
              width: 200.0,
              child: FlareActor(
                'assets/Teddy.flr',
                animation: 'no_internet',
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'No Internet Connection',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Please check your internet connection and try again.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Handle retry button press
              },
              child: Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}


noInternet(){
  return  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200.0,
              width: 200.0,
              child: FlareActor(
                'assets/Teddy.flr',
                animation: 'no_internet',
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'No Internet Connection',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Please check your internet connection and try again.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Handle retry button press
              },
              child: Text('Retry'),
            ),
          ],
        );
}