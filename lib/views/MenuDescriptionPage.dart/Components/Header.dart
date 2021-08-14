import 'package:flutter/material.dart';
import 'package:shoppingapp/constants/constant.dart';

import '../../../responsive.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.isMobile(context) ? 20 : 40,
      ),
      decoration: BoxDecoration(color: Color(0xff482C2A)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Icon(Icons.menu),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(
                  vertical: 30,
                ),
                child: Text(
                  "Ceasars Salads",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Noto Sans",
                      color: Colors.white),
                ),
              ),
              if (Responsive.isMobile(context))
                Container(
                    height: 20,
                    width: 50,
                    child: Image.asset("assets/images/Group 7991.png")),
              Container(
                height: 30,
                width: 30,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Image.asset(
                  "assets/images/Vector 9.png",
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              height: 240,
              width: 340,
              child: Image.asset("assets/images/klipartz 1.png"),
            ),
          ),
          SizedBox(
            height: 0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  padding: EdgeInsets.only(left: 3, right: 3),
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white24),
                  child: Image.asset(
                    "assets/images/klipartz 1.png",
                    fit: BoxFit.fill,
                  )),
              SizedBox(
                width: 10,
              ),
              Container(
                  padding: EdgeInsets.only(left: 3, right: 3),
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white24),
                  child: Image.asset(
                    "assets/images/klipartz 1.png",
                    fit: BoxFit.fill,
                  )),
              SizedBox(
                width: 10,
              ),
              Container(
                  padding: EdgeInsets.only(left: 3, right: 3),
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white24),
                  child: Image.asset(
                    "assets/images/klipartz 1.png",
                    fit: BoxFit.fill,
                  )),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Constant.mainColor),
                child: Icon(
                  Icons.add,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
