import 'package:flutter/material.dart';

class ListTurunan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(
          top: 15.0,
          bottom: 15.0,
          left: 35.0,
          right: 20.0,
        ),
        margin: EdgeInsets.symmetric(
          vertical: 5.0,
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
            Text(
              'kamus',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: Colors.black26,
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            Icon(
              Icons.arrow_right,
              color: Colors.black26,
              size: 25.0,
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
