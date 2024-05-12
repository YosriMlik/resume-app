import 'package:flutter/material.dart';
import 'package:resume_app/utils/AppColors.dart';
import 'package:resume_app/widgets/svg_loader.dart';

Widget NavigationMenu(icon, {isSelected = false, height, width, onClick}) {
  return InkWell(
    onTap: onClick,
    child: Column(
      mainAxisAlignment:
          MainAxisAlignment.center, // Align contents vertically centered
      children: <Widget>[
        svgLoader(icon, height: height, width: width),
        Container(
          margin: EdgeInsets.only(left: 7, right: 8, top: 5, bottom: 25),
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            color: isSelected ? navigationSelectionColor : Colors.transparent,
          ),
        )
      ],
    ),
  );
}
