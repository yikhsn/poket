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
          padding: EdgeInsets.only(
            top: 10.0,
            bottom: 20.0,
            left: 0.0,
            right: 30.0,
          ),
          children: <Widget>[
            ListTurunan(),
            ListTurunan(),
            ListTurunan(),
            ListTurunan(),
            ListTurunan(),
            ListTurunan(),
            ListTurunan(),
            ListTurunan(),
            ListTurunan(),
            ListTurunan(),
            ListTurunan(),
            ListTurunan(),
            ListTurunan(),
          ],
        ),
      ),
    );
  }
}
