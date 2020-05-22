import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/SectionTitle.dart';

class LetternavSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SectionTitle(),
            Expanded(
              child: Container(
                color: Colors.white,
                child: ListView(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Letters(),
                    Letters(),
                    Letters(),
                    Letters(),
                    Letters(),
                    Letters(),
                    Letters(),
                    Letters(),
                    Letters(),
                    Letters(),
                    Letters(),
                    Letters(),
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

class Letters extends StatelessWidget {
  const Letters({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        LetterBox(),
        LetterBox(),
      ],
    );
  }
}

class LetterBox extends StatelessWidget {
  const LetterBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
            'A',
            style: TextStyle(
              color: Colors.redAccent,
              fontSize: 50.0,
              // fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
