import 'package:flutter/material.dart';
import 'package:kbbi_app/models/word.dart';

class MainTranslation extends StatelessWidget {
  final Word word;

  MainTranslation(this.word);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.red,
        width: MediaQuery.of(context).size.width,
        height: 170.0,
        margin: EdgeInsets.all(0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                    word.entri == null ? null : word.entri,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
