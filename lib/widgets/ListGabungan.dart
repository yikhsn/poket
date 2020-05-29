import 'package:flutter/material.dart';

class ListGabungan extends StatelessWidget {
  const ListGabungan({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      padding: EdgeInsets.all(0.0),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 15.0,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
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
            Text(
              'kamus',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black26,
              ),
            ),
            Icon(
              Icons.arrow_right,
              color: Colors.black26,
              size: 22.0,
            ),
            Expanded(
              child: Text(
                'kamus bahasa aceh',
                style: TextStyle(
                  fontSize: 16.0,
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
