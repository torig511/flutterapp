import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  Loginpage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // title: Text("login"),
          title: Text(widget.title),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: usernameController,
                decoration: InputDecoration(labelText: 'Enter your username'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(labelText: 'Enter your email'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: passwordController,
                decoration: InputDecoration(labelText: 'Enter your password'),
              ),
            ),
            RaisedButton(
              child: Text("login"),
              onPressed: () {
                print(usernameController.text);
                print(emailController.text);
                print(passwordController.text);
              },
            ),
          ],
        ));
  }
}
