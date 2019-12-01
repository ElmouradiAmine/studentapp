import 'package:flutter/material.dart';

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget logoWidget = Container(
      width: 150,
      height: 150,
      child: Image(
        image: AssetImage("images/logo.png"),
      ),
    );

    final Widget slogonWidget = Text(
      "Helping Students and \nTeachers achieve their best.",
      style: TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      textAlign: TextAlign.center,
    );

    final Widget signUpButton = Container(
      width: 300,
      height: 45,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25)),
        onPressed: () {
          Navigator.of(context).pushNamed('/signup');
        },
        color: Colors.blue[600],
        child: Text(
          "SIGN UP",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );

    final Widget loginButton = Container(
      width: 300,
      height: 45,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.blue[600]),
            borderRadius: BorderRadius.circular(25)),
        onPressed: () {
          Navigator.of(context).pushNamed('/login');
        },
        color: Colors.white,
        child: Text(
          "I HAVE AN ACCOUNT",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 16,
          ),
        ),
      ),
    );

    return Scaffold(
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            logoWidget,
            SizedBox(
              height: 35,
            ),
            slogonWidget,
            SizedBox(
              height: 100,
            ),
            signUpButton,
            SizedBox(
              height: 25,
            ),
            loginButton,
          ],
        ),
      ),
    );
  }
}
