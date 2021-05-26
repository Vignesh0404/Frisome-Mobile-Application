import 'package:flutter/material.dart';
import 'package:fri_web/landingScreen.dart';
import 'package:fri_web/splashScreen.dart';

import 'allOrders.dart';
import 'foodDetail.dart';
import 'myCart.dart';
import 'orderComplete.dart';
import 'splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
