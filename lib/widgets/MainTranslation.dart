import 'package:flutter/material.dart';
import 'package:kbbi_app/models/word.dart';

class MainTranslation extends StatelessWidget {
  final Word word;

  MainTranslation(this.word);

  @override
  Widget build(BuildContext context) {
    double fontSizeBasedOnLengthEntry;
    if (word.entri.length > 30) {
      fontSizeBasedOnLengthEntry = 22;
    } else {
      fontSizeBasedOnLengthEntry = 28;
    }

    return SafeArea(
      child: Container(
        color: Colors.red,
        width: MediaQuery.of(context).size.width,
        height: 170.0,
        margin: EdgeInsets.all(0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 0,
                  ),
                  child: Text(
                    word.entri == null
                        ? Container(
                            width: 0.0,
                            height: 0.0,
                          )
                        : word.entri,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: fontSizeBasedOnLengthEntry,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                word.silabel != null
                    ? Column(
                        children: <Widget>[
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            word.silabel == null ? null : word.silabel,
                            // 'ka-mus',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      )
                    : Container(
                        width: 0.0,
                        height: 0.0,
                      )
              ],
            )
          ],
        ),
      ),
    );
  }
}
