import 'package:flutter/material.dart';
import 'package:shoppingapp/constants/constant.dart';

class CheckBoxWidget extends StatelessWidget {
  final String txt;
  final bool val;
  const CheckBoxWidget({
    Key? key,
    required this.txt,
    required this.val,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 5),
          height: 20,
          width: 20,
          decoration: BoxDecoration(
              color: val ? Constant.mainColor : Color(0xffC8BEB7),
              borderRadius: BorderRadius.circular(5)),
          child: Icon(
            Icons.done,
            size: 15,
            color: Colors.white,
          ),
        ),
        Flexible(
          child: Container(
            child: Text(
              txt,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12, color: Color(0xff6E5D51)),
            ),
          ),
        )
      ],
    );
  }
}
