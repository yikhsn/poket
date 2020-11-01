import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/SectionTitle.dart';
import 'package:kbbi_app/widgets/Letters.dart';
import 'package:kbbi_app/widgets/LetterBox.dart';

class LetternavSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: SectionTitle('Berdasarkan huruf'),
              margin: EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 10.0,
                ),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Wrap(
                    children: <Widget>[
                      LetterBox('A'),
                      LetterBox('C'),
                      LetterBox('E'),
                      LetterBox('G'),
                      LetterBox('I'),
                      LetterBox('K'),
                      LetterBox('M'),
                      LetterBox('O'),
                      LetterBox('R'),
                      LetterBox('U'),
                      LetterBox('W'),
                      LetterBox('Y'),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
