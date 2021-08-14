import 'package:flutter/material.dart';
import 'package:shoppingapp/constants/constant.dart';
import 'package:shoppingapp/responsive.dart';

class Categorypage extends StatelessWidget {
  final img = [
    "assets/images/burger2.png",
    "assets/images/burger2.png",
    "assets/images/soda.png",
    "assets/images/ice-cream.png",
    "assets/images/Group 7877.png"
  ];
  final catName = ["Burger", "Drinks", "Desserts", "Taco", "Burger"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.bgcolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(
              horizontal: Responsive.isMobile(context) ? 20 : 40,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(Icons.menu),
                    ),
                    Spacer(),
                    Container(
                        height: 44,
                        width: 44,
                        margin: EdgeInsets.symmetric(
                          vertical: 30,
                        ),
                        child: Image.asset("assets/images/Ellipse 677.png")),
                  ]),
                ),
                Text(
                  "Choose",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      "Your Favorite",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " Food",
                      style: TextStyle(
                          fontSize: 32,
                          color: Color(0xffFF6B01),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: Responsive.isMobile(context) ? 20 : 40,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Theme(
                          data: Theme.of(context)
                              .copyWith(primaryColor: Color(0xffbababa)),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Search here your food",
                                hintStyle: TextStyle(
                                    fontSize: 14, color: Color(0xffbababa)),
                                prefixIcon: Icon(Icons.search),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Responsive.isMobile(context) ? 20 : 40,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          color: Color(0xffB5C730),
                          borderRadius: BorderRadius.circular(5)),
                      child: Image.asset(
                        "assets/images/Filter.png",
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Responsive.isMobile(context) ? 20 : 40,
                ),
                Container(
                  child: Text(
                    "Categories",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: Responsive.isMobile(context) ? 20 : 20,
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: ListView.separated(
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: Responsive.isMobile(context) ? 20 : 40,
                          );
                        },
                        scrollDirection: Axis.horizontal,
                        itemCount: img.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(
                                top: Responsive.isMobile(context) ? 0 : 30),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: index == 0
                                    ? Color(0xffb5c730)
                                    : Color(0xfff2f2f2)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: Responsive.isMobile(context)
                                          ? 20
                                          : 60),
                                  child: Image.asset(
                                    "assets/images/burger2.png",
                                    color: index == 0
                                        ? Colors.white
                                        : Color(0xff6E5D51),
                                    height: 24,
                                    width: 24,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  catName[index],
                                  style: TextStyle(
                                      color: index == 0
                                          ? Colors.white
                                          : Color(0xff6e5d51),
                                      fontSize: 12),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: ListView.separated(
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: Responsive.isMobile(context) ? 20 : 20,
                          );
                        },
                        scrollDirection: Axis.horizontal,
                        itemCount: img.length,
                        itemBuilder: (context, index) {
                          return FittedBox(
                            child: Container(
                              margin: EdgeInsets.only(
                                top: 40,
                                bottom: Responsive.isMobile(context) ? 40 : 120,
                              ),
                              padding: EdgeInsets.only(
                                  left: Responsive.isMobile(context) ? 0 : 20,
                                  right: Responsive.isMobile(context) ? 0 : 20,
                                  bottom: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff6E5D51)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Image.asset(
                                      "assets/images/image-removebg-preview (5) 1.png",
                                      height: Responsive.isMobile(context)
                                          ? 154
                                          : 174,
                                      width: Responsive.isMobile(context)
                                          ? 200
                                          : 245,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: Responsive.isMobile(context)
                                            ? 20
                                            : 0),
                                    child: Text(
                                      "Beef Burger",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 24),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: Responsive.isMobile(context)
                                            ? 20
                                            : 0),
                                    child: Text(
                                      "Cheesy Mozarella",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: Responsive.isMobile(context)
                                            ? 20
                                            : 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Text(
                                            "\$5.50",
                                            style: TextStyle(
                                                color: Color(0xffB5C730),
                                                fontSize: 34),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Container(
                                            alignment: Alignment.bottomLeft,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 10),
                                            decoration: BoxDecoration(
                                                color: Color(0xffB5C730),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
            horizontal: Responsive.isMobile(context) ? 20 : 40, vertical: 10),
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Color(0xffb5c730)),
        child: Row(
          mainAxisAlignment: Responsive.isMobile(context)
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.spaceAround,
          children: [
            NavigationItem(
              img: "assets/images/Home2.png",
            ),
            NavigationItem(
              img: "assets/images/Notification.png",
            ),
            NavigationItem(
              img: "assets/images/Heart.png",
            ),
            NavigationItem(
              img: "assets/images/Profile.png",
            )
          ],
        ),
      ),
    );
  }
}

class NavigationItem extends StatelessWidget {
  final String img;
  const NavigationItem({
    Key? key,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      child: Image.asset(img),
    );
  }
}
