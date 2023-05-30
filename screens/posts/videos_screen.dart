// import 'package:charityapp/tabs/colors.dart';
import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';

import '../../widgets/posts/video_contrller.dart';

class videos extends StatefulWidget {
  const videos({Key? key}) : super(key: key);
  @override
  _videostate createState() => _videostate();
}

class _videostate extends State<videos> {
  late VideoPlayerController controller;
  late VideoPlayerController controller2;
  late VideoPlayerController controller3;
  late VideoPlayerController controller4;
  late VideoPlayerController controller5;
  bool isMute = false;
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset("video/v2.mp4")
      ..initialize().then((value) {
        setState(() {});
      });
    controller2 = VideoPlayerController.asset("video/v1.mp4")
      ..initialize().then((value) {
        setState(() {});
      });
    controller3 = VideoPlayerController.asset("video/v3.mp4")
      ..initialize().then((value) {
        setState(() {});
      });
    controller4 = VideoPlayerController.asset("video/v4.mp4")
      ..initialize().then((value) {
        setState(() {});
      });
    controller5 = VideoPlayerController.asset("video/v5.mp4")
      ..initialize().then((value) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Thanks for your donation")),
      body: ListView(children: [
        SizedBox(
          height: 10,
        ),
        VideoController(
          description: 'The distribution of Ramadan carton on the poor ',
        ),
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
        VideoController(
          description: 'Distributing meals to the poor ',
        ),
        Container(
          width: 200,
          height: 300,
          child: Center(
            child: controller2.value.isInitialized
                ? VideoPlayer(controller2)
                : Container(),
          ),
        ),
        VideoProgressIndicator(
          controller2,
          allowScrubbing: true,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () async {
                  Duration? value = await controller2.position;
                  var d = value! - Duration(seconds: 10);
                  controller2.seekTo(Duration(seconds: d.inSeconds));
                },
                child: Text("<<")),
            ElevatedButton(
                onPressed: () {
                  controller2.play();
                },
                child: Icon(Icons.play_arrow_rounded)),
            ElevatedButton(
                onPressed: () {
                  controller2.pause();
                },
                child: Icon(Icons.pause)),
            ElevatedButton(
                onPressed: () async {
                  Duration? d = await controller.position;
                  var value = d! + Duration(seconds: 10);
                  controller2.seekTo(value);
                },
                child: Text(">>")),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        VideoController(
            description:
                'Kids are happy to distribute Eidah ,Every year and you are fine'),
        Center(
          child: controller3.value.isInitialized
              ? AspectRatio(
                  child: VideoPlayer(controller3),
                  aspectRatio: controller3.value.aspectRatio,
                )
              : Container(),
        ),
        VideoProgressIndicator(
          controller3,
          allowScrubbing: true,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () async {
                  Duration? value = await controller3.position;
                  var d = value! - Duration(seconds: 10);
                  controller2.seekTo(Duration(seconds: d.inSeconds));
                },
                child: Text("<<")),
            ElevatedButton(
                onPressed: () {
                  controller3.play();
                },
                child: Icon(Icons.play_arrow_rounded)),
            ElevatedButton(
                onPressed: () {
                  controller3.pause();
                },
                child: Icon(Icons.pause)),
            ElevatedButton(
                onPressed: () async {
                  Duration? d = await controller.position;
                  var value = d! + Duration(seconds: 10);
                  controller3.seekTo(value);
                },
                child: Text(">>")),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        VideoController(description: 'Distribution of clothes for the poor'),
        Center(
          child: controller5.value.isInitialized
              ? AspectRatio(
                  child: VideoPlayer(controller5),
                  aspectRatio: controller5.value.aspectRatio,
                )
              : Container(),
        ),
        VideoProgressIndicator(
          controller5,
          allowScrubbing: true,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () async {
                  Duration? value = await controller5.position;
                  var d = value! - Duration(seconds: 10);
                  controller5.seekTo(Duration(seconds: d.inSeconds));
                },
                child: Text("<<")),
            ElevatedButton(
                onPressed: () {
                  controller5.play();
                },
                child: Icon(Icons.play_arrow_rounded)),
            ElevatedButton(
                onPressed: () {
                  controller5.pause();
                },
                child: Icon(Icons.pause)),
            ElevatedButton(
                onPressed: () async {
                  Duration? d = await controller.position;
                  var value = d! + Duration(seconds: 10);
                  controller5.seekTo(value);
                },
                child: Text(">>")),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        VideoController(
            description: 'Building a school for children,s education'),
        Container(
          width: 300,
          height: 450,
          child: Center(
            child: controller4.value.isInitialized
                ? AspectRatio(
                    child: VideoPlayer(controller4),
                    aspectRatio: controller2.value.aspectRatio,
                  )
                : Container(),
          ),
        ),
        VideoProgressIndicator(
          controller4,
          allowScrubbing: true,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () async {
                  Duration? value = await controller4.position;
                  var d = value! - Duration(seconds: 10);
                  controller4.seekTo(Duration(seconds: d.inSeconds));
                },
                child: Text("<<")),
            ElevatedButton(
                onPressed: () {
                  controller4.play();
                },
                child: Icon(Icons.play_arrow_rounded)),
            ElevatedButton(
                onPressed: () {
                  controller4.pause();
                },
                child: Icon(Icons.pause)),
            ElevatedButton(
                onPressed: () async {
                  Duration? d = await controller.position;
                  var value = d! + Duration(seconds: 10);
                  controller4.seekTo(value);
                },
                child: Text(">>")),
          ],
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        child: isMute ? Icon(Icons.volume_off_rounded) : Icon(Icons.volume_up),
        onPressed: () {
          setState(() {
            controller.setVolume(isMute ? 1 : 0);
            isMute = !isMute;
          });
          isMute = !isMute;
          setState(() {
            controller2.setVolume(isMute ? 1 : 0);
            isMute = !isMute;
          });
          isMute = !isMute;
          setState(() {
            controller3.setVolume(isMute ? 1 : 0);
            isMute = !isMute;
          });
          isMute = !isMute;
          setState(() {
            controller4.setVolume(isMute ? 1 : 0);
            isMute = !isMute;
          });
          isMute = !isMute;
          setState(() {
            controller5.setVolume(isMute ? 1 : 0);
            isMute = !isMute;
          });
        },
      ),
    );
  }
}
