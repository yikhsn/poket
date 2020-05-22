import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/LetterBox.dart';

class Letters extends StatelessWidget {
  final String first;
  final String two;

  Letters(this.first, this.two);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        LetterBox(first),
        LetterBox(two),
      ],
    );
  }
}
