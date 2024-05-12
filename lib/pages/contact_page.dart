// ignore_for_file: prefer_const_constructors, unnecessary_this

import 'package:flutter/material.dart';
import 'package:resume_app/utils/text_style.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/map.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            "Contact",
            style: nameTextStyle,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: InkWell(
              child: Text(
                "📞 26644323",
                style: TextStyle(
                  color: const Color.fromARGB(255, 15, 107, 181),
                ),
              ),
              onTap: () {
                launchUrl(Uri.parse("tel:+21626644323"));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: InkWell(
              child: Text(
                "✉️ ymlik24@gmail.com",
                style: TextStyle(
                  color: const Color.fromARGB(255, 15, 107, 181),
                ),
              ),
              onTap: () {
                launchUrl(Uri.parse("mailto:ymlik24@gmail.com"));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: InkWell(
              child: Text(
                "🔗 Linkedin Profile",
                style: TextStyle(
                  color: const Color.fromARGB(255, 15, 107, 181),
                ),
              ),
              onTap: () {
                launchUrl(Uri.parse("https://www.linkedin.com/in/yosri-mlik/"));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: Text(
              "📍 Beliana 3087, Sfax",
              style: headerTextStyle,
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 10, top: 20),
              child: Container(
                width: 300,
                height: 300,
                child: MapPage(),
              ))
        ],
      ),
    );
  }
}
