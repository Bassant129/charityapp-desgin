import 'package:flutter/material.dart';

class HeaderSignUpLogin extends StatelessWidget {
  const HeaderSignUpLogin(
      {super.key, required this.title, required this.description});
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          description,
          style: TextStyle(
            fontSize: 15.0,
          ),
        ),
      ],
    );
  }
}
