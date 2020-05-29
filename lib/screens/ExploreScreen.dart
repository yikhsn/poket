import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/ResultList.dart';

class ExploreScreen extends StatefulWidget {
  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore'),
      ),
      backgroundColor: Colors.white,
      body: Container(
        // padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: ListView(
          children: <Widget>[
            ResultList(),
            ResultList(),
            ResultList(),
            ResultList(),
            ResultList(),
            ResultList(),
            ResultList(),
            ResultList(),
            ResultList(),
            ResultList(),
            ResultList(),
            ResultList(),
            ResultList(),
            ResultList(),
            ResultList(),
            ResultList(),
            ResultList(),
            ResultList(),
          ],
        ),
      ),
    );
  }
}
