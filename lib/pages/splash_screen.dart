import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  final BoxDecoration backgroundWidget = BoxDecoration(
    // Box decoration takes a gradient
    gradient: LinearGradient(
      // Where the linear gradient begins and ends
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      // Add one stop for each color. Stops should increase from 0 to 1
      stops: [0.1, 0.5, 0.7, 0.9],
      colors: [
        // Colors are easy thanks to Flutter's Colors class.
        Colors.blue[800],
        Colors.blue[700],
        Colors.blue[600],
        Colors.blue[400],
      ],
    ),
  );

  final Widget logoWidget = Container(
    padding: EdgeInsets.all(12.0),
    child: Image(
      image: AssetImage("images/logo.png"),
    ),
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 10.0,
          offset: Offset(1.0, 1.0),
        )
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).popAndPushNamed('/selection');
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              logoWidget,
              SizedBox(
                height: 18,
              ),
              Text(
                'Insert Name',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                'Your school in your pocket.',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          // Add box decoration
          decoration: backgroundWidget,
        ),
      ),
    );
  }
}
