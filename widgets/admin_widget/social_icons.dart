// import 'package:charityapp/tabs/colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons(
      {super.key,
      required this.text,
      required this.icon,
      required this.color,
      required this.url});

  final String text;
  final String url;
  final IconData icon;
  final Color color;

  Future<void> _launchUrl(String name, String urlPath) async {
    String url = "";
    if (name == "facebook") {
      // "https://www.facebook.com/sara.shehab.7?mibextid=ZbWKwL"
      url = urlPath;
    } else if (name == "messenger") {
      // "bassantmohammed284@gmail.com"
      url = urlPath;
    } else if (name == "whatsapp") {
      // "whatsapp://send?phone=+201003394475"
      url = urlPath;
    } else if (name == "phone") {
      // "tel: +201003394475"
      url = urlPath;
    }
    final Uri _url = Uri.parse(url);

    if (!await launchUrl(_url)) {
      throw Exception('could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        children: <Widget>[
          InkWell(
            onTap: () {
              _launchUrl(text, url);
            },
            child: Container(
              height: 50,
              width: 50,
              padding: EdgeInsets.all(2.0),
              margin: EdgeInsets.all(4.0),
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
              child: Icon(icon, color: Colors.white, size: 25),
            ),
          ),
        ],
      ),
    );
  }
}
