import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shoppingapp/constants/constant.dart';

import '../../../responsive.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Icon(Icons.more_vert),
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/klipartz 29.png"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      height: 24,
                      width: 24,
                      child: Image.asset("assets/images/Edit.png"),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        "Ceasars Salads",
                        style: TextStyle(
                            color: Color(
                              0xff482C2A,
                            ),
                            fontSize: 22),
                      ),
                    ),
                    Container(
                      child: Text(
                        "\$6.00",
                        style:
                            TextStyle(fontSize: 22, color: Color(0xffcc1427)),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 15,
                      itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("4.6(129 raatings)"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Stack(
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Semper risus mattis pulvinar penatibus fringilla. Scelerisque...",
                        style: TextStyle(fontSize: 12),
                        maxLines: 3,
                      ),
                      // Positioned(
                      //   child: Align(
                      //     child: Text(
                      //       "See More",
                      //       style: TextStyle(
                      //           fontSize: 12, color: Constant.mainColor),
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 1,
                  color: Color(0xfffafaf0),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.favorite,
                            size: 20,
                            color: Color(0xffCC1427),
                          ),
                        ),
                        Container(
                          child: Text(" (126)",
                              style: TextStyle(color: Color(0xff6E5D51))),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 16,
                          height: 16,
                          child: Image.asset("assets/images/calories 1.png",
                              color: Color(0xff6E5D51)),
                        ),
                        Container(
                          child: Text(
                            " 999 Cal",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff6E5D51)),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            width: 16,
                            height: 16,
                            child: Image.asset("assets/images/Group 7939.png",
                                color: Color(0xff6E5D51))),
                        Container(
                          child: Text(
                            "15 min",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff6E5D51)),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        if (!Responsive.isMobile(context))
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 135,
            ),
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                color: Constant.mainColor,
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.add),
                Text("Add Item"),
              ],
            ),
          ))
      ],
    );
  }
}
