import 'package:flutter/material.dart';

// Create a Form widget.
class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
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
          "LOGIN",
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
        title: Text("Login"),
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
                  width: 250,
                  height: 250,
                  child: Image(
                    image: AssetImage(
                      "images/loginImage.png",
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
                  height: 20,
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
