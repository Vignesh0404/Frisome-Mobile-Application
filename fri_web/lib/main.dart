import 'package:flutter/material.dart';
import 'package:fri_web/landingScreen.dart';

import 'allOrders.dart';
import 'foodDetail.dart';
import 'myCart.dart';
import 'orderComplete.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AllOrders(),
    );
  }
}
