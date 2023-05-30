import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../colors.dart';

import '../../tabs/tasks/tasksbas.dart';
import '../admins/manger_screen.dart';
import '../posts/poor_screen.dart';
import '../posts/videos_screen.dart';

class UserAdmin extends StatefulWidget {
  const UserAdmin({Key? key}) : super(key: key);
  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<UserAdmin> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return //DefaultTabController(
        //length: 4,
        //child:
        Scaffold(
            backgroundColor: Color.fromARGB(0, 0, 0, 1), body: Text("admin")
            /*PageView(
          onPageChanged: (index) {},
          controller: _pageController,
          children: [
            poor(),
            videos(),
            manager(),
            dontors(),
          ],
        ),
        bottomNavigationBar: CupertinoTabBar(
          backgroundColor: Color.fromARGB(0, 0, 0, 1),
          onTap: (index) {
            _pageController.jumpToPage(index);
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: aColor,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.ondemand_video,
                  color: aColor,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.group, color: aColor), label: ''),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_task,
                color: aColor,
              ),
            )
          ],
        ),*/
            );
    //);
    //Tab view
  }
}
