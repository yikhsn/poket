import 'package:flutter/material.dart';
import 'package:kbbi_app/models/example.dart';
import 'package:kbbi_app/models/word.dart';

class SingleExample extends StatelessWidget {
  final List<Example> examples;

  SingleExample(this.examples);

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
              examples.first.contoh,
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
