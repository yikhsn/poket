import 'package:flutter/material.dart';
import 'package:kbbi_app/screens/SingleScreen.dart';

class ResultList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SingleScreen(),
          ),
        );
      },
      child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 15.0,
          ),
          //
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(
                color: Colors.black12,
                width: 1.0,
              ),
            ),
          ),
          child: Row(
            children: <Widget>[
              Text(
                'kamus bahasa',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 18.0,
                ),
              ),
            ],
          )),
    );
  }
}
