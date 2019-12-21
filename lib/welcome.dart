import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
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
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 90, 0, 10),
                  child: Center(
                    child: Image.asset(
                      'images/girlreading.png',
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Hi there, Welcome to the smart way of learning and sharing',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'UbuntuCondensed',
                      fontWeight: FontWeight.w900,
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
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
              Flexible(
                child: Container(
                  height: 55.0,
                  width: 250.0,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign_up');
                    },
                    color: Color(0xFF67ABF2),
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
                        'Best tool for students and professionals, learn in a smart way',
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
