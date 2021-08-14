import 'package:flutter/material.dart';
import 'package:shoppingapp/constants/constant.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.img,
  }) : super(key: key);

  final List<String> img;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Icon(Icons.menu),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 30,
              ),
              child: Text(
                "Home",
                style: TextStyle(fontSize: 22, fontFamily: "Noto Sans"),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Icon(Icons.chevron_left),
            ),
          ],
        ),
        Container(
          height: 40,
          width: MediaQuery.of(context).size.width,
          child: ListView.separated(
              separatorBuilder: (context, i) {
                return SizedBox(
                  width: 10,
                );
              },
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: index == 1 ? Constant.mainColor : Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Container(
                          height: 24,
                          width: 24,
                          child: Image.asset(img[index])),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Appertizers",
                        style: TextStyle(
                            color: index == 1 ? Colors.white : Colors.black),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 17,
                        width: 18,
                        child: Image.asset(
                          "assets/images/Edit.png",
                          color: index == 1 ? Colors.white : Constant.mainColor,
                        ),
                      )
                    ],
                  ),
                );
              },
              itemCount: img.length),
        ),
      ],
    );
  }
}
