import 'package:charityorganization_app/colors.dart';
import 'package:charityorganization_app/tabs/tasks/tasksbas.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../admins/manger_screen.dart';
import '../posts/information.dart';
import '../posts/poor_screen.dart';
import '../posts/videos_screen.dart';

class Users extends StatefulWidget {
  const Users({Key? key}) : super(key: key);
  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<Users> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          //backgroundColor: Color.fromARGB(0, 0, 0, 1),
          /*body: Container(
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
      ),*/
          body: PageView(
            onPageChanged: (index) {},
            //physics: NeverScrollableScrollPhysics(),
            controller: _pageController,
            children: [
              poor(),
              videos(),
              manager(),
              dontors(),
              information(),
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
                    color: bsColor,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.ondemand_video,
                    color: bsColor,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.group, color: bsColor), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_task, color: bsColor), label: ''),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.create,
                  color: bsColor,
                ),
              )
            ],
          ),
        ));

    //Tab view
  }
}
