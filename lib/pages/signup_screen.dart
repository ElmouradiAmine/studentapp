import 'package:flutter/material.dart';

// Create a Form widget.
class SignUpScreen extends StatefulWidget {
  @override
  SignUpScreenState createState() {
    return SignUpScreenState();
  }
}

class SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Widget loginButton = Container(
      width: double.infinity,
      height: 45,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        onPressed: () {},
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

    // Build a Form widget using the _formKey created above.
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        title: Text("SIGN UP"),
      ),
      body: Form(
        key: _formKey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 180,
                  height: 180,
                  child: Image(
                    image: AssetImage(
                      "images/signupImage.png",
                    ),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder()),
                  validator: (value) {
                    /*if (value.isEmpty) {
                      return 'Please enter some text';
                    }*/
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder()),
                  validator: (value) {
                    /*if (value.isEmpty) {
                      return 'Please enter some text';
                    }*/
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder()),
                  validator: (value) {
                    /*if (value.isEmpty) {
                      return 'Please enter some text';
                    }*/
                    return null;
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Radio(
                      value: 1,
                    ),
                    new Text(
                      'Student',
                      style: new TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    new Radio(
                      value: 0,
                    ),
                    new Text(
                      'Teacher',
                      style: new TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                loginButton,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
