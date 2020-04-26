import 'package:flutter/material.dart';

class SingleDefinition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 40.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 40.0,
                child: Text(
                  '1',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Text(
                  'Ini adalah arti dati kata menanggalkan, yang berasal dari tanggal dengan awal me dan imbuhan an',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.2,
                  ),
                  overflow: TextOverflow.visible,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
