import 'package:flutter/material.dart';

class ListBookmark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 35.0,
          vertical: 20.0,
        ),
        margin: EdgeInsets.only(
          left: 0.0,
          right: 20.0,
          top: 5.0,
          bottom: 5.0,
        ),
        decoration: BoxDecoration(
          // color: Theme.of(context).accentColor,
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
        ),
        width: MediaQuery.of(context).size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.bookmark_border,
              color: Colors.black45,
              size: 25.0,
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Text(
                'kamus bahasa aceh',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black45,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
