import 'package:flutter/material.dart';
import 'package:shoppingapp/constants/constant.dart';
import 'package:shoppingapp/responsive.dart';

class CardWidget extends StatelessWidget {
  final String img, text;
  final VoidCallback press;
  const CardWidget({
    Key? key,
    required this.img,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                  left: Responsive.isMobile(context) ? 26 : 30,
                  right: Responsive.isMobile(context) ? 26 : 30,
                  top: 15),
              height: Responsive.isMobile(context)
                  ? MediaQuery.of(context).size.height * 0.056
                  : 72,
              width: Responsive.isMobile(context)
                  ? MediaQuery.of(context).size.width * 0.121
                  : 72,
              child: Image.asset(img),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Text(
                text,
                style: TextStyle(color: Constant.homefontColor, fontSize: 14),
              ),
            )
          ],
        ),
      ),
    );
  }
}
