import 'package:flutter/material.dart';
import 'package:shoppingapp/constants/constant.dart';
import 'package:shoppingapp/views/ColorsAndStyling/Component/Body.dart';
import 'package:shoppingapp/views/ColorsAndStyling/Component/Header.dart';

class ColorsAndStylingPage extends StatelessWidget {
  const ColorsAndStylingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.bgcolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              Body(),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
