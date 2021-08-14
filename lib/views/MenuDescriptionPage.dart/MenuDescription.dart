import 'package:flutter/material.dart';
import 'package:shoppingapp/constants/constant.dart';
import 'package:shoppingapp/views/MenuDescriptionPage.dart/Components/Card.dart';
import 'package:shoppingapp/views/MenuDescriptionPage.dart/Components/Header.dart';

import '../../responsive.dart';

class MenuDescription extends StatelessWidget {
  const MenuDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.bgcolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Header(),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: Responsive.isMobile(context) ? 20 : 40,
                      vertical: 20),
                  child: Column(
                    children: [
                      if (!Responsive.isMobile(context))
                        CardItem(
                            itName: 'Show in:',
                            str1: 'USA',
                            img: "assets/images/Group 8095.png"),
                      SizedBox(
                        height: 20,
                      ),
                      CardItem(
                        itName: 'Name',
                        str1: 'Ceasars',
                        img: "assets/images/Group 8095.png",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CardItem(
                        itName:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing',
                        str1: 'Description',
                        img: "assets/images/Group 8095.png",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CardItem(
                        itName:
                            'Tomato, leaves, Basil, Mozarella cheese, Chicken',
                        str1: 'Ingredients',
                        img: "assets/images/Group 8093.png",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CardItem(
                          itName: '\$19',
                          str1: 'Price',
                          img: "assets/images/Group 8092.png"),
                      SizedBox(
                        height: 20,
                      ),
                      CardItem(
                          itName: '999 Cal',
                          str1: 'Calories',
                          img: "assets/images/calories 1.png"),
                      SizedBox(
                        height: 20,
                      ),
                      CardItem(
                          itName: '15 min',
                          str1: 'Time to Prepare',
                          img: "assets/images/Group 7939.png"),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Row(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                        "assets/images/Group 8089.png"),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    child: Text(
                                      "Rating",
                                      style: TextStyle(
                                          color: Color(0xff482C2A),
                                          fontSize: 16),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/images/Group 31.png",
                                      height: 16,
                                      width: 16,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "4.6 (129 ratings)",
                                        style:
                                            TextStyle(color: Color(0xff6E5D51)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerRight,
                                height: 13,
                                width: 13,
                                child: FittedBox(
                                  child: Container(
                                    padding: EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                        color: Constant.mainColor,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Icon(
                                      Icons.done,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Row(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                        "assets/images/Vector (1).png"),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    child: Text(
                                      "Rating",
                                      style: TextStyle(
                                          color: Color(0xff482C2A),
                                          fontSize: 16),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      size: 15,
                                      color: Colors.red,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "(129)",
                                      style:
                                          TextStyle(color: Color(0xff6E5D51)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Spacer()
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
