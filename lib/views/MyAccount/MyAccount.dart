import 'package:flutter/material.dart';
import 'package:shoppingapp/constants/constant.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import '../../responsive.dart';
import 'components/CheckBoxCard.dart';
import 'components/Header.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  double _value = 40.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.bgcolor,
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 80,
          ),
          Header(),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Type:",
                  style: TextStyle(fontSize: 18, color: Color(0xff482C2A)),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: CheckBoxWidget(
                              val: false,
                              txt: 'Cafe',
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: CheckBoxWidget(
                                val: true,
                                txt: 'Restuarant',
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: CheckBoxWidget(
                              val: false,
                              txt: 'Hotel',
                            ),
                          ),
                          if (!Responsive.isMobile(context))
                            Expanded(
                              flex: 2,
                              child: CheckBoxWidget(
                                val: false,
                                txt: 'Bakery',
                              ),
                            ),
                          if (!Responsive.isMobile(context))
                            Expanded(
                              flex: 2,
                              child: CheckBoxWidget(
                                val: false,
                                txt: 'Patisserie',
                              ),
                            ),
                        ],
                      ),
                      if (Responsive.isMobile(context))
                        Row(
                          children: [
                            Container(
                              child: Expanded(
                                child: CheckBoxWidget(
                                  val: false,
                                  txt: 'Bakery',
                                ),
                              ),
                            ),
                            Expanded(
                              child: CheckBoxWidget(
                                val: false,
                                txt: 'Patisserie',
                              ),
                            ),
                            Spacer()
                          ],
                        ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    "Website",
                    style: TextStyle(fontSize: 18, color: Color(0xff482C2A)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Text(
                    "http://www.online food.com",
                    style: TextStyle(color: Color(0xff6E5D51)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    "Social Media",
                    style: TextStyle(fontSize: 18, color: Color(0xff482C2A)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Facebook",
                              style: TextStyle(color: Color(0xff6E5D51))),
                          Container(
                            margin: !Responsive.isMobile(context)
                                ? EdgeInsets.only(right: 250)
                                : EdgeInsets.only(right: 0),
                            child: Text(
                              "http://www.instagram.com",
                              style: TextStyle(
                                  color: Color(0xff6E5D51), fontSize: 12),
                            ),
                          ),
                          Image.asset(
                            "assets/images/Edit.png",
                            height: 20,
                            width: 20,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Twitter",
                              style: TextStyle(color: Color(0xff6E5D51))),
                          Container(
                            margin: !Responsive.isMobile(context)
                                ? EdgeInsets.only(right: 250)
                                : EdgeInsets.only(right: 0),
                            child: Text(
                              "http://www.twitter.com",
                              style: TextStyle(
                                  color: Color(0xff6E5D51), fontSize: 12),
                            ),
                          ),
                          Image.asset(
                            "assets/images/Edit.png",
                            height: 20,
                            width: 20,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Instagram",
                              style: TextStyle(color: Color(0xff6E5D51))),
                          Container(
                            margin: !Responsive.isMobile(context)
                                ? EdgeInsets.only(right: 250)
                                : EdgeInsets.only(right: 0),
                            child: Text(
                              "http://www.instagram.com",
                              style: TextStyle(
                                  color: Color(0xff6E5D51), fontSize: 12),
                            ),
                          ),
                          Image.asset(
                            "assets/images/Edit.png",
                            height: 20,
                            width: 20,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    "Products",
                    style: TextStyle(fontSize: 18, color: Color(0xff482C2A)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/klipartz 5.png",
                            height: 24,
                            width: 24,
                          ),
                          Image.asset(
                            "assets/images/klipartz 6.png",
                            height: 24,
                            width: 24,
                          ),
                          Image.asset(
                            "assets/images/klipartz 7.png",
                            height: 24,
                            width: 24,
                          ),
                          Image.asset(
                            "assets/images/klipartz 8.png",
                            height: 24,
                            width: 24,
                          ),
                          Image.asset(
                            "assets/images/klipartz 9.png",
                            height: 24,
                            width: 24,
                          ),
                          Image.asset(
                            "assets/images/klipartz 10.png",
                            height: 24,
                            width: 24,
                          ),
                          Image.asset(
                            "assets/images/klipartz 11.png",
                            height: 24,
                            width: 24,
                          ),
                          Image.asset(
                            "assets/images/klipartz 13.png",
                            height: 24,
                            width: 24,
                          )
                        ],
                      ),
                      SizedBox(
                        height: Responsive.isMobile(context) ? 10 : 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/klipartz 15.png",
                            height: 24,
                            width: 24,
                          ),
                          Image.asset(
                            "assets/images/klipartz 16.png",
                            height: 24,
                            width: 24,
                          ),
                          Image.asset(
                            "assets/images/klipartz 17.png",
                            height: 24,
                            width: 24,
                          ),
                          Image.asset(
                            "assets/images/klipartz 18.png",
                            height: 24,
                            width: 24,
                          ),
                          Image.asset(
                            "assets/images/klipartz 20.png",
                            height: 24,
                            width: 24,
                          ),
                          Image.asset(
                            "assets/images/klipartz 22.png",
                            height: 24,
                            width: 24,
                          ),
                          Image.asset(
                            "assets/images/klipartz 23.png",
                            height: 24,
                            width: 24,
                          ),
                          Image.asset(
                            "assets/images/klipartz 25.png",
                            height: 24,
                            width: 24,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    "Services: ",
                    style: TextStyle(fontSize: 18, color: Color(0xff482C2A)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CheckBoxWidget(
                              val: true,
                              txt: 'Dine-in',
                            ),
                          ),
                          Expanded(
                            child: CheckBoxWidget(
                              val: false,
                              txt: 'Live Shows',
                            ),
                          ),
                          Expanded(
                            child: CheckBoxWidget(
                              val: true,
                              txt: 'Take Away',
                            ),
                          ),
                          if (!Responsive.isMobile(context))
                            Expanded(
                              child: CheckBoxWidget(
                                val: false,
                                txt: 'Oceanian',
                              ),
                            ),
                          if (!Responsive.isMobile(context))
                            Expanded(
                              child: CheckBoxWidget(
                                val: true,
                                txt: 'Delivery',
                              ),
                            ),
                        ],
                      ),
                      Row(
                        children: [
                          if (Responsive.isMobile(context))
                            Expanded(
                              child: CheckBoxWidget(
                                val: false,
                                txt: 'Oceanian',
                              ),
                            ),
                          if (Responsive.isMobile(context))
                            Expanded(
                              child: CheckBoxWidget(
                                val: true,
                                txt: 'Delivery',
                              ),
                            ),
                          Expanded(
                            child: CheckBoxWidget(
                              val: false,
                              txt: 'Reservations',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    "Cuisines(s): ",
                    style: TextStyle(fontSize: 18, color: Color(0xff482C2A)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CheckBoxWidget(
                              val: true,
                              txt: 'African',
                            ),
                          ),
                          Expanded(
                            child: CheckBoxWidget(
                              val: false,
                              txt: 'American',
                            ),
                          ),
                          Expanded(
                            child: CheckBoxWidget(
                              val: true,
                              txt: 'Arbicc',
                            ),
                          ),
                          if (!Responsive.isMobile(context))
                            Expanded(
                              child: CheckBoxWidget(
                                val: false,
                                txt: 'Asian',
                              ),
                            ),
                          if (!Responsive.isMobile(context))
                            Expanded(
                              child: CheckBoxWidget(
                                val: false,
                                txt: 'European',
                              ),
                            ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          if (Responsive.isMobile(context))
                            Expanded(
                              child: CheckBoxWidget(
                                val: false,
                                txt: 'Asian',
                              ),
                            ),
                          if (Responsive.isMobile(context))
                            Expanded(
                              child: CheckBoxWidget(
                                val: false,
                                txt: 'European',
                              ),
                            ),
                          Expanded(
                            child: CheckBoxWidget(
                              val: true,
                              txt: 'Latin',
                            ),
                          ),
                          if (!Responsive.isMobile(context))
                            Expanded(
                              child: CheckBoxWidget(
                                val: false,
                                txt: 'Mediteran',
                              ),
                            ),
                          if (!Responsive.isMobile(context))
                            Expanded(
                              child: CheckBoxWidget(
                                val: true,
                                txt: 'Carribean',
                              ),
                            ),
                          if (!Responsive.isMobile(context)) Spacer(),
                          if (!Responsive.isMobile(context)) Spacer()
                        ],
                      ),
                      Row(
                        children: [
                          if (Responsive.isMobile(context))
                            Expanded(
                              child: CheckBoxWidget(
                                val: false,
                                txt: 'Mediteran',
                              ),
                            ),
                          if (Responsive.isMobile(context))
                            Expanded(
                              child: CheckBoxWidget(
                                val: true,
                                txt: 'Carribean',
                              ),
                            ),
                          Spacer()
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    "Price Range: ",
                    style: TextStyle(fontSize: 18, color: Color(0xff482C2A)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: 20,
                                top: 10,
                              ),
                              child: Text("\$00",
                                  style: TextStyle(color: Color(0xffC8BEB7))),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20, top: 10),
                              child: Text(
                                "\$100",
                                style: TextStyle(color: Color(0xffC8BEB7)),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: SfSlider(
                            activeColor: Constant.mainColor,
                            inactiveColor: Color(0xffC8BEB7),
                            min: 0.0,
                            max: 100.0,
                            value: _value,
                            interval: 20,
                            showTicks: false,
                            minorTicksPerInterval: 1,
                            onChanged: (dynamic value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    )),
                SizedBox(
                  height: 60,
                ),
              ],
            ),
          ),
        ],
      ))),
    );
  }
}
