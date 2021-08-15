import 'package:flutter/material.dart';
import 'package:shoppingapp/constants/constant.dart';
import 'package:shoppingapp/views/MainMenu/components/Body.dart';
import 'package:shoppingapp/views/MainMenu/components/Header.dart';

import '../../responsive.dart';

class MainMenu extends StatelessWidget {
  final img = [
    "assets/images/salad 1.png",
    "assets/images/Vector.png",
    "assets/images/salad 1.png",
    "assets/images/Vector.png",
    "assets/images/salad 1.png",
  ];
  final catName = ["Salad", "Vector", "Salad", "Vector", "Salad"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.bgcolor,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            child: Header(img: img),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                if (!Responsive.isMobile(context))
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Text("Menus"),
                          ),
                          Container(
                            child: Icon(Icons.chevron_right),
                          ),
                          Container(
                            child: Text("Main Menu"),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Text("Show in.. "),
                          ),
                          Container(
                            height: 20,
                            width: 40,
                            child: Image.asset("assets/images/Group 7991.png"),
                          )
                        ],
                      )
                    ],
                  ),
                if (!Responsive.isMobile(context))
                  SizedBox(
                    height: 20,
                  ),
                Body(),
                SizedBox(
                  height: 40,
                ),
                if (Responsive.isMobile(context))
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xffB5C730)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0))),
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Add Item",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ))
              ],
            ),
          ),
        ],
      )),
    );
  }
}
