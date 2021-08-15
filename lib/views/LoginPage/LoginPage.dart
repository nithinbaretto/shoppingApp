import 'package:flutter/material.dart';
import 'package:shoppingapp/constants/constant.dart';
import 'package:shoppingapp/views/HomePage/HomePage.dart';

import '../../responsive.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      backgroundColor: Constant.bgcolor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                height: Responsive.isMobile(context) ? 100 : 122,
                width: Responsive.isMobile(context) ? 75 : 92,
                decoration: BoxDecoration(),
                child: Image.asset(
                  "assets/images/delicious logo 3.png",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: Responsive.isMobile(context) ? 260 : 370,
                width: Responsive.isMobile(context) ? 260 : 370,
                child: Image.asset("assets/images/Accept tasks-amico 1.png"),
              ),
              SizedBox(
                height: 30,
              ),
              InputWidget(
                helpertxt: "E-mail...",
                img: "assets/images/Message.png",
                sufIcon: Icons.visibility_off,
              ),
              SizedBox(
                height: 15,
              ),
              InputWidget(
                helpertxt: "Password...",
                img: "assets/images/Lock.png",
                sufIcon: Icons.visibility_off,
              ),
              SizedBox(
                height: Responsive.isMobile(context) ? 30 : 30,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: Responsive.isMobile(context) ? 20 : 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        "Reset password?",
                        style:
                            TextStyle(color: Color(0xffCC1427), fontSize: 14),
                      ),
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xffB5C730)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15.0))),
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: Responsive.isMobile(context) ? 10 : 15,
                              horizontal:
                                  Responsive.isMobile(context) ? 15 : 100),
                          child: Row(
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                child: Image.asset("assets/images/Login.png"),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Sign In",
                                style: TextStyle(
                                    fontSize:
                                        Responsive.isMobile(context) ? 16 : 18),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: Responsive.isMobile(context) ? 10 : 20),
              Divider(
                indent: Responsive.isMobile(context) ? 20 : 40,
                endIndent: Responsive.isMobile(context) ? 20 : 40,
                thickness: 1,
                color: Colors.white,
              ),
              SizedBox(height: Responsive.isMobile(context) ? 20 : 30),
              Container(
                child: Text(
                  "You don't yet have an account?",
                  style: TextStyle(color: Color(0xff482C2A)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: Responsive.isMobile(context) ? 20 : 40),
                padding: EdgeInsets.symmetric(vertical: 10),
                child: ElevatedButton(
                  // color: Color(0xff6E5D51),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff6E5D51)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0))),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return HomePage();
                    }));
                  },
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(
                                vertical:
                                    Responsive.isMobile(context) ? 10 : 15),
                            height: 24,
                            width: 24,
                            child: Image.asset("assets/images/Add User.png")),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Create Account",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: Responsive.isMobile(context) ? 16 : 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      )),
    );
  }
}

class InputWidget extends StatelessWidget {
  final String helpertxt;
  final String img;
  final sufIcon;

  const InputWidget({
    Key? key,
    required this.helpertxt,
    required this.img,
    required this.sufIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: Responsive.isMobile(context) ? 20 : 40),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Container(
            height: 15,
            width: 16,
            child: Image.asset(img),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Theme(
              data: Theme.of(context).copyWith(primaryColor: Color(0xff200E32)),
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: helpertxt == "Password..."
                        ? Icon(sufIcon, color: Color(0xff200E32))
                        : null,
                    border: InputBorder.none,
                    hintText: helpertxt,
                    hintStyle:
                        TextStyle(fontSize: 14, color: Color(0xffC8BEB7))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
