import 'package:flutter/material.dart';
import 'package:shoppingapp/controller/NavigationController.dart';
import 'package:shoppingapp/responsive.dart';
import 'package:get/get.dart';

class Bottomnavigationbar extends StatefulWidget {
  // final VoidCallback press;
  // const Bottomnavigationbar({
  //   Key? key,
  //   required this.press,
  // });
  @override
  _BottomnavigationbarState createState() => _BottomnavigationbarState();
}

class _BottomnavigationbarState extends State<Bottomnavigationbar> {
  final controller = Get.put(NavigationController());
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isMobile(context) ? 20 : 100, vertical: 10),
      height: 72,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Dot(
                    controller: controller,
                    val: 0,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.updateValue(0);
                    },
                    child: Container(
                        height: 24,
                        width: 24,
                        child: Image.asset("assets/images/Home.png")),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Dot(controller: controller, val: 1),
                  SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                      onTap: () {
                        controller.updateValue(1);
                      },
                      child: Container(
                          height: 24,
                          width: 24,
                          child: Image.asset("assets/images/Star.png"))),
                ],
              ),
              Column(
                children: [
                  Dot(controller: controller, val: 2),
                  SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.updateValue(2);
                    },
                    child: Container(
                        height: 24,
                        width: 24,
                        child: Image.asset("assets/images/Calendar.png")),
                  ),
                ],
              ),
              Column(
                children: [
                  Dot(controller: controller, val: 3),
                  SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.updateValue(3);
                    },
                    child: Container(
                        height: 24,
                        width: 24,
                        child: Image.asset("assets/images/Chart.png")),
                  ),
                ],
              ),
              Column(
                children: [
                  Dot(controller: controller, val: 4),
                  SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.updateValue(4);
                    },
                    child: Container(
                        height: 24,
                        width: 24,
                        child: Image.asset("assets/images/Setting.png")),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Dot extends StatelessWidget {
  final int val;
  const Dot({
    Key? key,
    required this.controller,
    required this.val,
  }) : super(key: key);

  final NavigationController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() => controller.updateValue.toInt() == val
        ? Container(
            margin: EdgeInsets.symmetric(vertical: 0),
            width: 6,
            height: 6,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Color(0xffb5c730)),
          )
        : Container());
  }
}
