import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shoppingapp/constants/constant.dart';
import 'package:shoppingapp/controller/NavigationController.dart';
import 'package:shoppingapp/views/Components/NavigationBar.dart';
import 'package:shoppingapp/views/DashBoardPage.dart';
import 'package:shoppingapp/views/Page1.dart';
import 'package:shoppingapp/views/Page2.dart';
import 'package:shoppingapp/views/Page3.dart';
import 'package:shoppingapp/views/Page4.dart';

import '../../responsive.dart';

class HomePage extends StatelessWidget {
  final pages = [DashBoard(), Page1(), Page2(), Page3(), Page4()];
  final controller = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constant.bgcolor,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: Responsive.isMobile(context) ? 20 : 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(Icons.menu),
                        ),
                        Expanded(
                          flex: 8,
                          child: Center(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical:
                                    Responsive.isMobile(context) ? 30 : 50,
                              ),
                              child: Text(
                                "Home",
                                style: TextStyle(
                                    fontSize: 22, fontFamily: "Noto Sans"),
                              ),
                            ),
                          ),
                        ),
                        Spacer()
                      ],
                    ),
                  ],
                ),
                Obx(() => pages[controller.updateValue.toInt()])
              ],
            ),
          ),
        ) // child: Obx(() => pages[controller.updateValue.toInt()])),
            ),
        bottomNavigationBar: Bottomnavigationbar());
  }
}
