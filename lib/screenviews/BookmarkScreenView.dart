import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/HeaderBookmark.dart';
import 'package:kbbi_app/widgets/BodyBookmark.dart';

class BookmarkScreenView extends StatefulWidget {
  @override
  _BookmarkScreenViewState createState() => _BookmarkScreenViewState();
}

class _BookmarkScreenViewState extends State<BookmarkScreenView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          HeaderBookmark(),
          BodyBookmark(),
        ],
      ),
    );
  }
}
