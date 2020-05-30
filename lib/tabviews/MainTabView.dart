import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/BoxTranslation.dart';

class MainTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(
        top: 10.0,
        right: 20.0,
        bottom: 0.0,
        left: 20.0,
      ),
      child: ListView(
        padding: EdgeInsets.symmetric(
          vertical: 15.0,
        ),
        children: <Widget>[
          BoxTranslation(),
          BoxTranslation(),
          BoxTranslation(),
          BoxTranslation(),
        ],
      ),
    );
  }
}
