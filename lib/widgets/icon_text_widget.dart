import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AppIconTxt extends StatelessWidget {  //dart file is in Widgets folder,icon_text_widget.dart
  final IconData icon;
  final String text;
  const AppIconTxt({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Color(0xFFBFC2DF),
          ),
          SizedBox(width: 10),
          Text(
            text,
            style: Styles.textStyle,
          ),
        ],
      ),
    );
  }
}