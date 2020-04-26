import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/single_defintion.dart';
import 'package:kbbi_app/widgets/text_type.dart';

List<String> definitions = ['A', 'B'];

class TextDefine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 40.0,
          horizontal: 30.0,
        ),
        child: Column(
          children: <Widget>[
            TextType(),
            Container(
              child: Column(
                children: <Widget>[
                  SingleDefinition(),
                  SingleDefinition(),
                  SingleDefinition(),
                  SingleDefinition(),
                  SingleDefinition(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
