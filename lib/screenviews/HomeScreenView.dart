import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/CategorySection.dart';
import 'package:kbbi_app/widgets/SearchSection.dart';
import 'package:kbbi_app/widgets/LetternavSection.dart';
import 'package:kbbi_app/screens/ExploreScreen.dart';

class HomeScreenView extends StatefulWidget {
  @override
  _HomeScreenViewState createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  TextEditingController _inputSearchController;

  @override
  void dispose() {
    super.dispose();
    _inputSearchController.dispose();
  }

  // @override
  // void initState() {}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
        ),
        child: Column(
          children: <Widget>[
            SearchSection(inputSearchController: _inputSearchController),
            CategorySection(),
            LetternavSection(),
          ],
        ),
      ),
    );
  }
}
