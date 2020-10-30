import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class NotFoundTurunan extends StatelessWidget {
  final String assetName = 'assets/nodata.svg';
  final String textToAdd;

  NotFoundTurunan(this.textToAdd);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 150,
        bottom: 0,
        left: 80,
        right: 80,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            assetName,
            // color: Colors.redAccent,
            width: 120,
            semanticsLabel: 'Not Found Illustration',
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            textToAdd,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
              color: Colors.black26,
              height: 1.3,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
