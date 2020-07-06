import 'package:flutter/material.dart';
import 'package:firebase_sample/constants.dart';
//import 'package:firebase_auth/firebase_auth.dart';

import 'package:animated_text_kit/animated_text_kit.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  //final _auth = FirebaseAuth.instance;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Register',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto'),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.all(15.0),
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    onChanged: (value) {
                      email = value;
                    },
                    textAlign: TextAlign.center,
                    decoration: kTextFieldDecoration,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextField(
                    onChanged: (value) {
                      password = value;
                    },
                    textAlign: TextAlign.center,
                    decoration: kTextFieldDecoration.copyWith(
                        hintText: 'Enter your password'),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  onPressed: () async {
//                  final newUser = await _auth.createUserWithEmailAndPassword(
//                      email: email, password: password);
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  color: kPrimaryColor,
                  splashColor: kPrimaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//class RegistrationPage extends StatefulWidget {
////  final _auth = FirebaseAuth.instance;
//  String email;
//  String password;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Colors.black,
//      body: Column(
//        crossAxisAlignment: CrossAxisAlignment.center,
//        children: <Widget>[
//          TextLiquidFill(
//            waveColor: kPrimaryColor,
//            image: Image.asset(
//              'images/HGPLogo.png',
//            ),
//          ),
//          SizedBox(
//            height: 50,
//          ),
//          Text(
//            'Register',
//            textAlign: TextAlign.center,
//            style: TextStyle(
//                color: kPrimaryColor,
//                fontSize: 50.0,
//                fontWeight: FontWeight.bold,
//                fontFamily: 'Roboto'),
//          ),
//          SizedBox(
//            height: 50,
//          ),
//          Container(
//            margin: EdgeInsets.all(15.0),
//            padding: EdgeInsets.all(15.0),
//            child: Column(
//              children: <Widget>[
//                TextField(
//                  onChanged: (value) {
//                    email = value;
//                  },
//                  textAlign: TextAlign.center,
//                  decoration: kTextFieldDecoration,
//                ),
//                SizedBox(
//                  height: 25,
//                ),
//                TextField(
//                  onChanged: (value) {
//                    password = value;
//                  },
//                  textAlign: TextAlign.center,
//                  decoration: kTextFieldDecoration.copyWith(
//                      hintText: 'Enter your password'),
//                ),
//                SizedBox(
//                  height: 50,
//                ),
//              ],
//            ),
//          ),
//          Container(
//            width: MediaQuery.of(context).size.width * 0.8,
//            child: ClipRRect(
//              borderRadius: BorderRadius.circular(29),
//              child: FlatButton(
//                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
//                onPressed: () async {
////                  final newUser = await _auth.createUserWithEmailAndPassword(
////                      email: email, password: password);
//                },
//                child: Text(
//                  'Sign up',
//                  style: TextStyle(fontSize: 15, color: Colors.black),
//                ),
//                color: kPrimaryColor,
//                splashColor: kPrimaryColor,
//              ),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}
