import 'package:flutter/material.dart';

class ExampleWord extends StatelessWidget {
  const ExampleWord({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 2.5,
      ),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.73,
            child: Text(
              '\"takut tidak ada dalam kamus saya\"',
              style: TextStyle(
                color: Colors.black38,
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                height: 1.3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
