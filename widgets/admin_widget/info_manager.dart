import 'package:charityorganization_app/colors.dart';
import 'package:flutter/material.dart';

class InfoManager extends StatelessWidget {
  const InfoManager({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(height: 30),
      Container(
        margin: EdgeInsets.only(left: 5),
        child: Text(
          "Manager of charity :",
          style: TextStyle(
            color: wColor,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      SizedBox(height: 15),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 5),
            child: CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("images/drsara.jpeg"),
            ),
          ),
          SizedBox(width: 10),
          Container(
            margin: EdgeInsets.only(right: 5),
            child: Text('''Name:sara shehab.
From:menof.
                ''',
                style: TextStyle(
                  color: wColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                )),
          ),
        ],
      ),
    ]);
  }
}
