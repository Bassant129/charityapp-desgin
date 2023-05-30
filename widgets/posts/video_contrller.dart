import 'package:charityorganization_app/colors.dart';
import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

class VideoController extends StatelessWidget {
  const VideoController({super.key, required this.description});
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage("images/post2.png"),
              ),
              SizedBox(
                width: 17,
              ),
              Text(
                "Humanity",
                style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w800,
                    color: Colors.blue),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
          width: double.infinity,
          child: Text(
            description,
            style: TextStyle(fontSize: 16, color: bColor),
          ),
        ),
      ],
    );
  }
}
