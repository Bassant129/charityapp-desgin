import 'package:flutter/material.dart';

class BouttonSignUpLogin extends StatelessWidget {
  const BouttonSignUpLogin(
      {super.key, required this.text, required this.onpressed, required Null Function() onPressed});
  final String text;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 120,
        padding: EdgeInsets.all(9),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 72, 168, 246),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
            child: Text(text,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ))));
  }
}
