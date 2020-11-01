import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/CategorySection.dart';
import 'package:kbbi_app/widgets/SearchSection.dart';
import 'package:kbbi_app/widgets/LetternavSection.dart';

class HomeScreenView extends StatelessWidget {
  final Function moveToSearch;

  HomeScreenView(this.moveToSearch);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          SearchSection(moveToSearch),
          CategorySection(),
          LetternavSection(),
        ],
      ),
    );
  }
}
