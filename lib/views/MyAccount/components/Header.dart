import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0xffC8BEB7), shape: BoxShape.circle),
                    child: Container(
                        child: Text(
                      "Logo",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
                Positioned(
                    child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Image.asset(
                        "assets/images/cam.png",
                      ),
                    ),
                  ),
                ))
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              "My Account/ General",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  "Shop's Name: ",
                  style: TextStyle(fontSize: 16, color: Color(0xff6E5D51)),
                ),
              ),
              Container(
                child: Text(
                  "La Pizzaria",
                  style: TextStyle(fontSize: 16, color: Color(0xff482C2A)),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 20,
                width: 20,
                child: Image.asset(
                  "assets/images/Edit.png",
                  height: 20,
                  width: 20,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  "E-mail: ",
                  style: TextStyle(fontSize: 16, color: Color(0xff6E5D51)),
                ),
              ),
              Container(
                child: Text(
                  "mamud@domain.com",
                  style: TextStyle(fontSize: 16, color: Color(0xff482C2A)),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 20,
                width: 20,
                child: Image.asset(
                  "assets/images/Edit.png",
                  height: 20,
                  width: 20,
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  "Phone: ",
                  style: TextStyle(fontSize: 16, color: Color(0xff6E5D51)),
                ),
              ),
              Container(
                child: Text(
                  "(+123)50 22 111",
                  style: TextStyle(fontSize: 16, color: Color(0xff482C2A)),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 20,
                width: 20,
                child: Image.asset(
                  "assets/images/Edit.png",
                  height: 20,
                  width: 20,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
