// ignore_for_file: use_key_in_widget_constructors, override_on_non_overriding_member, file_names



import 'package:charityorganization_app/colors.dart';
import 'package:flutter/material.dart';

import '../screens/admins/admin1.dart';
import '../screens/admins/admin2.dart';
import '../screens/admins/admin3.dart';

class AVolunteer extends StatelessWidget {
  @override
  List<Widget> Admin = [admin1(), admin2(), admin3()];
  List name = ["Eslam gamal", "Basant mohamed", "osman saad"];
  List home = ["Albuhayrah", "ALmenoufiya", "Alexandria"];
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 300,
                  width: 200,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  decoration: BoxDecoration(
                      color: Color(0xfff2f8ff),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: sdColor,
                          blurRadius: 4,
                          spreadRadius: 2,
                        )
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Admin[index]));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          child: Image.asset(
                            "images/admin${index + 1}.jpg",
                            height: 200,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${name[index]}",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: pColor,
                              ),
                            ),
                            Text(
                              "${home[index]}",
                              style: TextStyle(
                                fontSize: 15,
                                color: bColor.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
