import 'package:flutter/material.dart';

class ToSignUpLogin extends StatelessWidget {
  const ToSignUpLogin(
      {super.key,
      required this.text,
      required this.link,
      required this.onpress});
  final String text;
  final String link;
  final VoidCallback? onpress;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        GestureDetector(
          onTap: onpress,
          child: Text(
            link,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 41, 124, 233),
            ),
          ),
        )
      ],
    );
  }
}
