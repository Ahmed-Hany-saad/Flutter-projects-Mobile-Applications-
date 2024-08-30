// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String text1;
  final Color color1;
  final Function? screen;

  const Category({
    super.key,
    required this.text1,
    required this.color1,
    this.screen,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        if (screen != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen!()),
          );
        }
      },
      child: Container(
        height: screenWidth * 0.2,
        alignment: Alignment.centerLeft,
        color: color1,
        child: Padding(
          padding: EdgeInsets.only(
            left: screenWidth * 0.06,
          ),
          child: Text(
            text1,
            style: TextStyle(fontSize: screenWidth * 0.07),
          ),
        ),
      ),
    );
  }
}
