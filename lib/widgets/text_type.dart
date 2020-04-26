import 'package:flutter/material.dart';

class TextType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 40.0),
      child: Text(
        'VERBA',
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
