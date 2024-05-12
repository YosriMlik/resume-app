// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:resume_app/utils/AppColors.dart';
import 'package:resume_app/utils/text_style.dart';
import 'package:url_launcher/url_launcher.dart'; // Import url_launcher

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(right: 20, left: 20),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Portfolio", style: nameTextStyle),
            _itemWidget(
                "Bookshop",
                "01/2022 - 04/2022",
                "🔗 reedzbookshop.pythonanywhere.com",
                "https://reedzbookshop.pythonanywhere.com/"),
            Text(""),
            _itemWidget(
                "More", "", "🔗 Github Link", "https://github.com/YosriMlik"),
          ],
        ),
      ),
    );
  }

  Widget _itemWidget(college, date, details, link) {
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
              child: InkWell(
                child: Text(
                  details,
                  style: TextStyle(
                    color: const Color.fromARGB(
                        255, 15, 107, 181), // Change text color to blue
                  ),
                ),
                onTap: () {
                  launchUrl(Uri.parse(link));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
