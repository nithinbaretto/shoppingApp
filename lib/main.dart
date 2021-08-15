import 'package:flutter/material.dart';
import 'package:shoppingapp/views/ColorsAndStyling/ColorsAndStyling.dart';
import 'package:shoppingapp/views/LoginPage/LoginPage.dart';
import 'package:shoppingapp/views/MenuDescriptionPage.dart/MenuDescription.dart';
import 'package:shoppingapp/views/MyAccount/MyAccount.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: LoginPage(),
    );
  }
}
