import 'package:flutter/material.dart';

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
                padding: EdgeInsets.symmetric(
                  vertical: 30,
                ),
                child: Text(
                  "Colors & Styling",
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: "Noto Sans",
                      color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Icon(Icons.chevron_left),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 44,
            width: 44,
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Center(
                        child: Text(
                      "Logo",
                      style: TextStyle(fontSize: 10),
                    )),
                  ),
                ),
                Positioned(
                    child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 18,
                    width: 18,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xff482C2A))),
                    child: Container(
                        padding: EdgeInsets.all(3),
                        child: Image.asset("assets/images/cam.png")),
                  ),
                ))
              ],
            ),
          ),
          Center(
            child: Container(
              height: 170,
              width: 320,
              child: Image.asset("assets/images/Rectangle 3368.png"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(13),
                height: 44,
                width: 44,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Image.asset(
                  "assets/images/cam.png",
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
