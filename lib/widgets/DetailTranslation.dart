import 'package:flutter/material.dart';

class DetailTranslation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(children: <Widget>[
              Container(
                child: Column(children: <Widget>[
                  Container(
                    child: Text('Terjemahan 1'),
                  ),
                ]),
              )
            ]),
          )
        ],
      ),
    );
  }
}
