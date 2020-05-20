import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/BoxTranslation.dart';

class MainTabView extends StatelessWidget {
  const MainTabView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        vertical: 0.0,
        horizontal: 20.0,
      ),
      child: ListView(
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
