import 'package:flutter/material.dart';
import 'package:kbbi_app/screens/HomeScreen.dart';
import 'package:kbbi_app/widgets/CategorySection.dart';
import 'package:kbbi_app/widgets/SearchSection.dart';
import 'package:kbbi_app/widgets/LetternavSection.dart';
import 'package:kbbi_app/screens/ExploreScreen.dart';

class HomeScreenView extends StatelessWidget {
  final Function moveToSearch;

  HomeScreenView(this.moveToSearch);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
        ),
        child: Column(
          children: <Widget>[
            SearchSection(moveToSearch),
            CategorySection(),
            LetternavSection(),
          ],
        ),
      ),
    );
  }
}
