import 'package:flutter/material.dart';
import 'package:resume_app/utils/common_string.dart';
import 'package:resume_app/utils/text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(name, style: nameTextStyle),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              designation,
              style: headerTextStyle,
            ),
          ),
          Text(description),
          Container(
            margin: const EdgeInsets.only(top: 40.0),
            child: Text(soft, style: headerTextStyle),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(softSkills),
          ),
          Container(
            margin: const EdgeInsets.only(top: 40.0),
            child: Text(hard, style: headerTextStyle),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Text(hardSkills),
          ),
          Container(
            margin: const EdgeInsets.only(top: 40.0),
            child: Text(lang, style: headerTextStyle),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
            child: Text(langs),
          ),
        ],
      ),
    );
  }
}
