import 'package:flutter/material.dart';
import 'package:kbbi_app/screens/ExploreScreen.dart';

class LetterBox extends StatelessWidget {
  final String letter;

  LetterBox(this.letter);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ExploreScreen(this.letter, 'letter'),
            ),
          );
        },
        child: Container(
          width: 110.0,
          height: 110.0,
          padding: EdgeInsets.symmetric(
            horizontal: 7.5,
            vertical: 7.5,
          ),
          margin: EdgeInsets.only(
            right: 15,
            left: 0,
            top: 7.5,
            bottom: 7.5,
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
