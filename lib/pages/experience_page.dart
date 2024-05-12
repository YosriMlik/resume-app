// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:resume_app/utils/AppColors.dart';
import 'package:resume_app/utils/text_style.dart';

class ExperiencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(right: 20, left: 20),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Educational Path", style: nameTextStyle),
            _itemWidget("IIT", "09/2022 - now",
                "• Engineering degree\n• Specialty: Computer Engineering\n• Administration of network systems\n• The foundations of artificial intelligence\n• Multimedia techniques: Image and video processing in python"),
            Text(""),
            _itemWidget("ISIMED", "09/2019 - 05/2022",
                "• Bachelor's degree\n• Specialty : Software engineering and Information System\n• Participate in the analysis and design of information systems\n• Developing applications\n• Design, develop and manage databases"),
            Text(""),
            _itemWidget("Jannuary 18 High", "09/2015 - 05/2019",
                "• Section: Computer Science"),
          ],
        ),
      ),
    );
  }

  Widget _itemWidget(college, date, details) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 15,
                width: 15,
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
              ),
              Expanded(
                child: Text(college,
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left),
              ),
              Text(date,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 6, top: 6),
            decoration: BoxDecoration(
                border: Border(left: BorderSide(width: 2, color: Colors.grey))),
            child: Container(
              //height: MediaQuery.of(left).size.width * 0.34,
              margin: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: cardBGColor),
              child: Text(details),
            ),
          )
        ],
      ),
    );
  }
}
