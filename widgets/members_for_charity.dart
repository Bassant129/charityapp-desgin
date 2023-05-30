import 'package:charityorganization_app/colors.dart';
import 'package:flutter/material.dart';

class MembersForCharity extends StatelessWidget {
  const MembersForCharity({super.key, required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Center(
          child: Row(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 70,
                  ),
                  Container(
                    height: 250,
                    width: 200,
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    decoration: BoxDecoration(
                      color: Color(0xfff2f8ff),
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: sdColor,
                          blurRadius: 4,
                          spreadRadius: 2,
                        )
                      ],
                    ),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            image,
                            height: 200,
                            width: 250,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 50),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  text,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: pColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
