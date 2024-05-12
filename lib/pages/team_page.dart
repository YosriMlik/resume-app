// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:resume_app/utils/map.dart';
import 'package:resume_app/utils/text_style.dart';

class TeamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            "Our Team",
            style: nameTextStyle,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: Text(
              "• Yosri Mlik",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: Text(
              "• Saif Bahri",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
