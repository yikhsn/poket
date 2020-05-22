import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/SectionTitle.dart';
import 'package:kbbi_app/widgets/Letters.dart';

class LetternavSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SectionTitle('Berdasarkan huruf'),
            Expanded(
              child: Container(
                color: Colors.white,
                child: ListView(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Letters('A', 'B'),
                    Letters('C', 'D'),
                    Letters('E', 'F'),
                    Letters('G', 'H'),
                    Letters('I', 'J'),
                    Letters('K', 'L'),
                    Letters('M', 'N'),
                    Letters('O', 'Q'),
                    Letters('R', 'T'),
                    Letters('U', 'V'),
                    Letters('W', 'X'),
                    Letters('Y', 'Z'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
