import 'package:flutter/material.dart';

import '../../colors.dart';

class HeadTitle extends StatelessWidget {
  const HeadTitle({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(left: 15),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: bColor.withOpacity(0.7)),
        ),
      ),
    );
  }
}
