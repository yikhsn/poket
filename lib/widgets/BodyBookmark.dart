import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/ListBookmark.dart';

class BodyBookmark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 0.0,
          vertical: 0.0,
        ),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
          child: ListView(
            children: <Widget>[
              ListBookmark(),
              ListBookmark(),
              ListBookmark(),
              ListBookmark(),
              ListBookmark(),
              ListBookmark(),
              ListBookmark(),
              ListBookmark(),
              ListBookmark(),
              ListBookmark(),
              ListBookmark(),
            ],
          ),
        ),
      ),
    );
  }
}
