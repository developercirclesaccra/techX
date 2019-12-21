import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Flexible(
                flex: 2,
                child: Text(
                  'Welcome!',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 36.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Enter email here',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20,
                        ),
                      ),
                      TextField(
                        onChanged: (value) {},
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontFamily: 'Montserrat', fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Enter password here',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20,
                        ),
                      ),
                      TextField(
                        obscureText: true,
                        onChanged: (value) {},
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontFamily: 'Montserrat', fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  height: 55.0,
                  width: 250.0,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    color: Color(0xFFF9CC57),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Text(
                      'Log In',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 20.0),
                    ),
                  ),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'New User? Sign Up here',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Montserrat',
                            color: Color(0xFFBEBED4)),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Forgot Password? Click here',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Montserrat',
                            color: Color(0xFFBEBED4)),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
