import 'package:flutter/material.dart';
import 'package:student_app/pages/dashboard_screen.dart';
import 'package:student_app/pages/login_screen.dart';
import 'package:student_app/pages/selection_screen.dart';
import 'package:student_app/pages/signup_screen.dart';

//Import pages
import 'pages/splash_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
      routes: <String, WidgetBuilder>{
        '/selection': (BuildContext context) => SelectionScreen(),
        '/login': (BuildContext context) => LoginScreen(),
        '/signup': (BuildContext context) => SignUpScreen(),

      },
    );
  }
}
