import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/ListTurunan.dart';

class GabunganTabView extends StatelessWidget {
  const GabunganTabView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        child: ListView(
          padding: EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 20.0,
          ),
          children: <Widget>[
            ListTurunan(),
            SizedBox(height: 10.0),
            ListTurunan(),
            SizedBox(height: 10.0),
            ListTurunan(),
            SizedBox(height: 10.0),
            ListTurunan(),
            SizedBox(height: 10.0),
            ListTurunan(),
            SizedBox(height: 10.0),
            ListTurunan(),
            SizedBox(height: 10.0),
            ListTurunan(),
            SizedBox(height: 10.0),
            ListTurunan(),
            SizedBox(height: 10.0),
            ListTurunan(),
            SizedBox(height: 10.0),
            ListTurunan(),
            SizedBox(height: 10.0),
            ListTurunan(),
            SizedBox(height: 10.0),
            ListTurunan(),
            SizedBox(height: 10.0),
            ListTurunan(),
          ],
        ),
      ),
    );
  }
}
