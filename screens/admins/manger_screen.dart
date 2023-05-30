

import 'package:flutter/material.dart';

import '../../colors.dart';
import '../../widgets/AVolunter.dart';
import '../../widgets/admin_widget/bottom_title.dart';
import '../../widgets/admin_widget/head_title.dart';
import '../../widgets/admin_widget/info_manager.dart';
import '../../widgets/admin_widget/social_icons.dart';
import '../../widgets/base_container.dart';

class manager extends StatelessWidget {
  const manager({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: aColor,
      child: SingleChildScrollView(
        child: Stack(
          children: [
            BaseContainer(),
            Column(
              children: [
                InfoManager(),
                SizedBox(height: 50),
                HeadTitle(
                  text: "For a complaint",
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialIcons(
                      url:
                          "https://www.facebook.com/sara.shehab.7?mibextid=ZbWKwL",
                      color: Colors.blue,
                      text: 'facebook',
                      icon: Icons.facebook,
                    ),
                    SocialIcons(
                      url: "whatsapp://send?phone=+201003394475",
                      color: Colors.green,
                      text: 'whatsapp',
                      icon: Icons.phone,
                    ),
                    SocialIcons(
                      url: "tel: +201003394475",
                      color: Colors.blue,
                      text: 'phone',
                      icon: Icons.phone_in_talk,
                    ),
                  ],
                ),
                BottomTitle(
                  text: "Admins",
                ),
                AVolunteer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
