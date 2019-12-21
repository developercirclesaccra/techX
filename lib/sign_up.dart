import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                  'Sign Up!',
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
                        'Enter name here',
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
                      Navigator.pushNamed(context, '/homepage');
                    },
                    color: Color(0xFFF9CC57),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Text(
                      'Sign Up',
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
                        'Youre signing up into a world of smartness, listen, read and revise any document here!',
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
