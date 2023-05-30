

import 'package:flutter/material.dart';

import '../../widgets/admin_widget/bottom_title.dart';
import '../../widgets/admin_widget/head_title.dart';
import '../../widgets/admin_widget/image_admin.dart';
import '../../widgets/admin_widget/social_icons.dart';
import '../../widgets/volunteer.dart';

class admin3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD9E4EE),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageAdmin(
              imageUrl: 'images/admin3.jpg',
            ),
            SizedBox(height: 10),
            HeadTitle(
              text: 'For Donation ',
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcons(
                  url:
                      "https://www.facebook.com/osmansaad.eldeeb?mibextid=ZbWKwL",
                  color: Colors.blue,
                  text: 'facebook',
                  icon: Icons.facebook,
                ),
                SocialIcons(
                  url: "whatsapp://send?phone=+201208811339",
                  color: Colors.green,
                  text: 'whatsapp',
                  icon: Icons.phone,
                ),
                SocialIcons(
                  url: "tel: +201208811339",
                  color: Colors.blue,
                  text: 'phone',
                  icon: Icons.phone_in_talk,
                ),
              ],
            ),
            BottomTitle(
              text: 'Alex team',
            ),
            Volunteer(),
          ],
        ),
      ),
    );
  }
}
