import 'package:app/navigation.dart';
import 'package:app/sign_up.dart';
import 'package:app/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => Welcome(),
        '/login': (context) => Login(),
        '/sign_up': (context) => SignUp(),
        '/homepage': (context) => Navigation(),
      },
    );
  }
}
