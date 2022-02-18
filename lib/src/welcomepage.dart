// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:meet/src/signup.dart';
import 'package:meet/src/loginPage.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.shade200,
                  offset: Offset(
                    2,
                    4,
                  ),
                  blurRadius: 5,
                  spreadRadius: 2),
            ],
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: const [
                Color(0xfffbb448),
                Color(0xffe46b10),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'M',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                  children: const [
                    TextSpan(
                      text: 'ee',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                    TextSpan(
                      text: 't',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.people_alt,
                size: 40,
              ),
              SizedBox(
                height: 80,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(
                    vertical: 13,
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        15,
                      ),
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Color(0xffdf8e33).withAlpha(
                          100,
                        ),
                        offset: Offset(
                          2,
                          4,
                        ),
                        blurRadius: 8,
                        spreadRadius: 2,
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(
                        0xfff7892b,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpPage(),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(
                    vertical: 13,
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        15,
                      ),
                    ),
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  child: Text(
                    'Register now',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 40,
                  bottom: 20,
                ),
                child: Column(
                  children: const <Widget>[
                    Text(
                      'Quick login with Touch ID',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Icon(
                      Icons.fingerprint,
                      size: 90,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Touch ID',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
