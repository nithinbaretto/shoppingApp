import 'package:flutter/material.dart';

import '../../../responsive.dart';

class CardItem extends StatelessWidget {
  final String str1;
  final String itName;
  final String img;

  const CardItem({
    Key? key,
    required this.str1,
    required this.itName,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: Responsive.isMobile(context) ? 3 : 2,
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  child: Image.asset(img),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Text(
                    str1,
                    style: TextStyle(color: Color(0xff482C2A), fontSize: 16),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: Responsive.isMobile(context) ? 2 : 3,
            child: Container(
              padding: EdgeInsets.only(top: 2),
              child: Text(
                itName,
                style: TextStyle(color: Color(0xff6E5D51)),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              height: 20,
              width: 20,
              child: Image.asset("assets/images/Edit.png"),
            ),
          )
        ],
      ),
    );
  }
}
