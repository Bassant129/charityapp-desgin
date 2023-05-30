import 'package:flutter/material.dart';

class TextFelidForm extends StatelessWidget {
  const TextFelidForm({
    super.key,
    required this.icon,
    required this.text,
    required this.securText,
    this.onpress,
    required this.myController,
  });
  final IconData icon;
  final String text;
  final bool securText;
  final TextEditingController myController;
  final VoidCallback? onpress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            controller: myController,
            obscureText: securText,
            decoration: InputDecoration(
              prefixIcon: IconButton(
                icon: Icon(icon),
                onPressed: onpress,
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 3, color: Color.fromARGB(255, 72, 168, 246))),
              hintText: text,
            ),
          ),
        ),
      ),
    );
  }
}
