import 'package:flutter/material.dart';

class LetterBox extends StatelessWidget {
  final String letter;

  LetterBox(this.letter);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          print('botton letter tapped');
        },
        child: Container(
          width: 110.0,
          margin: EdgeInsets.symmetric(
            horizontal: 7.5,
            vertical: 7.5,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[350],
                blurRadius: 10.0,
                offset: Offset(0, 5.0),
              )
            ],
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Center(
            child: Text(
              letter,
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 50.0,
                // fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
