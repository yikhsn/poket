import 'package:flutter/material.dart';
import 'package:kbbi_app/models/word.dart';
import 'package:kbbi_app/widgets/ExampleWord.dart';

class BoxTranslation extends StatelessWidget {
  final Word word;

  BoxTranslation(this.word);

  String printKelas(String kelas) {
    if (kelas == 'n')
      return 'nomina';
    else if (kelas == 'a')
      return 'adjektiva';
    else if (kelas == 'adv')
      return 'adverbia';
    else if (kelas == 'v')
      return 'verba';
    else if (kelas == 'pron')
      return 'pronomina';
    else if (kelas == 'num')
      return 'numeralia';
    else
      return kelas;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Theme.of(context).accentColor,
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
          bottomLeft: Radius.circular(30.0),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 9.0,
      ),
      width: MediaQuery.of(context).size.width * 0.78,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  top: 5.0,
                ),
                child: Text(
                  '1',
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.78,
                      child: word.kelas == null
                          ? null
                          : Text(
                              printKelas(word.kelas),
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.redAccent,
                                height: 1.3,
                              ),
                            ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.75,
                      child: word.makna == null
                          ? null
                          : Text(
                              word.makna,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black54,
                                height: 1.3,
                              ),
                              // overflow: TextOverflow.ellipsis,
                            ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Icon(
                            Icons.subdirectory_arrow_right,
                            color: Colors.black38,
                            size: 20.0,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        // Column(
                        //   children: <Widget>[
                        //     ExampleWord(word),
                        //   ],
                        // )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 40.0,
            child: Divider(
              color: Colors.black12,
            ),
          ),
        ],
      ),
    );
  }
}
