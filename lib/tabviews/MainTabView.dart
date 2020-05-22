import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/BoxTranslation.dart';

class MainTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        vertical: 0.0,
        horizontal: 20.0,
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
