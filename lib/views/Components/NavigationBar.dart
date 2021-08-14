import 'package:flutter/material.dart';

class Bottomnavigationbar extends StatelessWidget {
  const Bottomnavigationbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffb5c730)),
                  ),
                  NavigationItems(img: "assets/images/Home.png"),
                ],
              ),
              NavigationItems(img: "assets/images/Star.png"),
              NavigationItems(img: "assets/images/Calendar.png"),
              NavigationItems(img: "assets/images/Chart.png"),
              NavigationItems(img: "assets/images/Setting.png")
            ],
          )
        ],
      ),
    );
  }
}

class NavigationItems extends StatelessWidget {
  final String img;
  const NavigationItems({
    Key? key,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 24, width: 24, child: Image.asset(img));
  }
}
