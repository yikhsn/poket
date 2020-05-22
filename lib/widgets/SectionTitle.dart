import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.black26,
          fontSize: 25.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
