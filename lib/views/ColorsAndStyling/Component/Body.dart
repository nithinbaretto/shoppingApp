import 'package:flutter/material.dart';
import 'package:shoppingapp/constants/constant.dart';
import 'package:shoppingapp/responsive.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  double _value = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: Responsive.isMobile(context) ? 20 : 40, vertical: 20),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 10,
              top: 10,
              bottom: 10,
            ),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Text(
                      "Background Photo:",
                      style: TextStyle(color: Color(0xff482C2A)),
                    ),
                  ),
                ),
                Spacer(),
                Flexible(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 20,
                      width: 20,
                      child: Image.asset("assets/images/cam.png"),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 10,
              top: 10,
              bottom: 10,
            ),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Text("Background Color:",
                        style: TextStyle(color: Color(0xff482C2A))),
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        color: Color(0xff482C2A),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 20,
                      width: 20,
                      child: Image.asset("assets/images/Group 7995.png"),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 10,
              top: 10,
              bottom: 10,
            ),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Text("Font Color:",
                        style: TextStyle(color: Color(0xff482C2A))),
                  ),
                ),
                Flexible(
                  // fit: FlexFit.loose,
                  child: Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        color: Color(0xff6E5D51),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    alignment: Alignment.centerRight,
                    height: 20,
                    width: 20,
                    child: Image.asset(
                      "assets/images/Group 7995.png",
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 10,
              top: 10,
              bottom: 10,
            ),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Text("Font Family:",
                        style: TextStyle(color: Color(0xff482C2A))),
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Nimbus sams",
                        style:
                            TextStyle(color: Color(0xff6E5D51), fontSize: 12)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.centerRight,
                    height: 20,
                    width: 20,
                    child: Icon(
                      Icons.expand_more,
                      color: Constant.mainColor,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Text(
                          "Roundness:",
                          style: TextStyle(color: Color(0xff482C2A)),
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Container(
                          child: Text(
                        "00%",
                        style: TextStyle(color: Color(0xffC8BEB7)),
                      )),
                    ),
                    Expanded(
                        flex: 3,
                        child: Container(
                            alignment: Alignment.centerRight,
                            child: Text("00%",
                                style: TextStyle(color: Color(0xffC8BEB7)))))
                  ],
                ),
                Row(
                  children: [
                    Spacer(),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.85,
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
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
