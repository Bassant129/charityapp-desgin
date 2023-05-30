// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

import '../../colors.dart';
import '../../widgets/admin_widget/social_icons.dart';
import '../../widgets/members_for_charity.dart';

final Uri _url = Uri.parse(
    'https://drive.google.com/folderview?id=10w1UeDDfnTn7Uhp37hrxQAmSHixz5CHK');
Future<void> _launchUrl4() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

class information extends StatefulWidget {
  const information({Key? key}) : super(key: key);
  @override
  _videostate createState() => _videostate();
}

class _videostate extends State<information> {
  late VideoPlayerController controller;

  bool isMute = false;
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset("video/v6.mp4")
      ..initialize().then((value) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    List name = ["Osman saad", "Basant mohamed", "Eslam gamal"];
    List phoneNumber = [
      "tel: +201208811339",
      "tel: +201065375177",
      "tel: +201092705113"
    ];

    return Scaffold(
      appBar: AppBar(title: Text("information about charity ")),
      body: ListView(
        children: [
          Image.asset(
            "images/back2.jpg",
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
            width: double.infinity,
            child: Text(
              "Purpose of Donation ",
              style: TextStyle(fontSize: 20, color: pColor),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 200,
            height: 300,
            child: Center(
              child: controller.value.isInitialized
                  ? VideoPlayer(controller)
                  : Container(),
            ),
          ),
          VideoProgressIndicator(
            controller,
            allowScrubbing: true,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    Duration? value = await controller.position;
                    var d = value! - Duration(seconds: 10);
                    controller.seekTo(Duration(seconds: d.inSeconds));
                  },
                  child: Text("<<")),
              ElevatedButton(
                  onPressed: () {
                    controller.play();
                  },
                  child: Icon(Icons.play_arrow_rounded)),
              ElevatedButton(
                  onPressed: () {
                    controller.pause();
                  },
                  child: Icon(Icons.pause)),
              ElevatedButton(
                  onPressed: () async {
                    Duration? d = await controller.position;
                    var value = d! + Duration(seconds: 10);
                    controller.seekTo(value);
                  },
                  child: Text(">>")),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "  Main members ",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: bsColor.withOpacity(0.9)),
            ),
          ),
          SizedBox(height: 10),
          MembersForCharity(
            image: 'images/p22.png',
            text: 'poor people',
          ),
          MembersForCharity(
            image: 'images/bvol3.jpg',
            text: 'volunteer',
          ),
          MembersForCharity(
            image: 'images/do.png',
            text: 'Donators',
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "To more information",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: bColor.withOpacity(0.7)),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _launchUrl4();
                },
                child: Text("  Click Here",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 41, 124, 233),
                    )),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              " Developers ",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: bsColor.withOpacity(0.9)),
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 400,
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
                      margin:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 20),
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
                          ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                              child: Image.asset(
                                "images/admin${3 - index}.jpg",
                                height: 200,
                                width: 200,
                                fit: BoxFit.cover,
                              )),
                          SizedBox(height: 8),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Text("${name[index]}",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: pColor,
                                      )),
                                ),
                                SizedBox(height: 10),
                                SocialIcons(
                                  text: 'phone',
                                  icon: Icons.phone_in_talk,
                                  color: Colors.blue,
                                  url: "${phoneNumber[index]}",
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            width: 150,
            padding: EdgeInsets.all(9),
            decoration: BoxDecoration(
                //color: Color.fromARGB(255, 72, 168, 246),
                borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: MaterialButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                color: bsColor,
                child: Text("Signout",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
