import 'package:flutter/material.dart';
import 'package:shoppingapp/constants/constant.dart';
import 'package:shoppingapp/views/CategoryPage/CategoryPage.dart';
import 'package:shoppingapp/views/ColorsAndStyling/ColorsAndStyling.dart';
import 'package:shoppingapp/views/Components/NavigationBar.dart';
import 'package:shoppingapp/views/HomePage/components/CardWidget.dart';
import 'package:shoppingapp/views/MainMenu/MainMenu.dart';
import 'package:shoppingapp/views/MenuDescriptionPage.dart/MenuDescription.dart';
import 'package:shoppingapp/views/MyAccount/MyAccount.dart';

import '../../responsive.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constant.bgcolor,
        drawer: Drawer(
          child: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: Responsive.isMobile(context) ? 20 : 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
                            vertical: 30,
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
                  height: 20,
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
                  height: 10,
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
                  height: 20,
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
                  height: 10,
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
                      width: Responsive.isMobile(context) ? 10 : 20,
                    ),
                    CardWidget(
                      img: "assets/images/map.png",
                      text: "Branches",
                      press: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Bottomnavigationbar());
  }
}
