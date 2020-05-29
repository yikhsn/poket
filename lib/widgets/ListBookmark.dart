import 'package:flutter/material.dart';

class ListBookmark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 15.0,
        ),
        margin: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 7.5,
        ),
        decoration: BoxDecoration(
          // color: Theme.of(context).accentColor,
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
            bottomLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[350],
              blurRadius: 5.0,
              offset: Offset(0, 5.0),
            )
          ],
        ),
        width: MediaQuery.of(context).size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.bookmark_border,
              color: Colors.black26,
              size: 25.0,
            ),
            Expanded(
              child: Text(
                'kamus bahasa aceh',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black38,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
