import 'package:flutter/material.dart';
import 'dart:async';
import 'landingScreen.dart';
import 'loader.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    String token = "4e24f28b28647d98c6440420f9da0d35";
    new Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LandingScreen(
                      token: token,
                    ))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Image.asset('images/logo.png'),
          Spacer(),
          ColorLoader2(),
          SizedBox(
            height: 90,
          )
        ],
      )),
    );
  }
}
