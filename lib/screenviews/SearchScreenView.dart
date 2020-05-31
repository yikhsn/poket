import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/HeaderSearch.dart';
import 'package:kbbi_app/widgets/ResultList.dart';

class SearchScreenView extends StatefulWidget {
  @override
  _SearchScreenViewState createState() => _SearchScreenViewState();
}

class _SearchScreenViewState extends State<SearchScreenView> {
  TextEditingController _inputSearchController;

  @override
  void dispose() {
    super.dispose();
    _inputSearchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
        ),
        child: Column(
          children: <Widget>[
            HeaderSearch(inputSearchController: _inputSearchController),
            Expanded(
              child: Container(
                // padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: ListView(
                  children: <Widget>[
                    // ResultList(),
                    // ResultList(),
                    // ResultList(),
                    // ResultList(),
                    // ResultList(),
                    // ResultList(),
                    // ResultList(),
                    // ResultList(),
                    // ResultList(),
                    // ResultList(),
                    // ResultList(),
                    // ResultList(),
                    // ResultList(),
                    // ResultList(),
                    // ResultList(),
                    // ResultList(),
                    // ResultList(),
                    // ResultList(),
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
