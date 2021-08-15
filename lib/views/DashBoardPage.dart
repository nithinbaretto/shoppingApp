import 'package:flutter/material.dart';
import 'package:shoppingapp/views/HomePage/components/CardWidget.dart';

import '../responsive.dart';
import 'CategoryPage/CategoryPage.dart';
import 'ColorsAndStyling/ColorsAndStyling.dart';
import 'MainMenu/MainMenu.dart';
import 'MenuDescriptionPage.dart/MenuDescription.dart';
import 'MyAccount/MyAccount.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text(
                  "Menus",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    right: Responsive.isMobile(context) ? 0 : 80),
                child: Text(
                  "See All",
                  style: TextStyle(color: Color(0xffb5c730)),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: Responsive.isMobile(context)
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.start,
          children: [
            CardWidget(
              img: "assets/images/burger.png",
              text: "Burger",
              press: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Categorypage();
                }));
              },
            ),
            if (!Responsive.isMobile(context))
              SizedBox(
                width: 20,
              ),
            CardWidget(
              img: "assets/images/soda.png",
              text: "Drinks",
              press: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ColorsAndStylingPage();
                }));
              },
            ),
            if (!Responsive.isMobile(context))
              SizedBox(
                width: 20,
              ),
            CardWidget(
              img: "assets/images/ice-cream.png",
              text: "Desert",
              press: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return MainMenu();
                }));
              },
            ),
            if (!Responsive.isMobile(context))
              SizedBox(
                width: 20,
              ),
            if (!Responsive.isMobile(context))
              CardWidget(
                img: "assets/images/ice-cream.png",
                text: "Desert",
                press: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return MainMenu();
                  }));
                },
              ),
          ],
        ),
        SizedBox(
          height: Responsive.isMobile(context) ? 32 : 30,
        ),
        Container(
          child: Container(
            child: Text(
              "Tools",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: Responsive.isMobile(context)
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.start,
          children: [
            CardWidget(
                img: "assets/images/feedback.png",
                text: "Reviews",
                press: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return MenuDescription();
                  }));
                }),
            if (!Responsive.isMobile(context))
              SizedBox(
                width: 20,
              ),
            CardWidget(
              img: "assets/images/diningtable.png",
              text: "Reservation",
              press: () {},
            ),
            if (!Responsive.isMobile(context))
              SizedBox(
                width: 20,
              ),
            CardWidget(
              img: "assets/images/pie-chart.png",
              text: "Analytics",
              press: () {},
            ),
          ],
        ),
        SizedBox(
          height: Responsive.isMobile(context) ? 30 : 30,
        ),
        Container(
          child: Container(
            child: Text(
              "Settings",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            CardWidget(
              img: "assets/images/user.png",
              text: "My Account",
              press: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return MyAccount();
                }));
              },
            ),
            SizedBox(
              width: Responsive.isMobile(context)
                  ? MediaQuery.of(context).size.width * 0.05
                  : 20,
            ),
            CardWidget(
              img: "assets/images/map.png",
              text: "Branches",
              press: () {},
            ),
          ],
        ),
      ],
    );
  }
}
