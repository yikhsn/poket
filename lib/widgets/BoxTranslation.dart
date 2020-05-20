import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/ExampleWord.dart';

class BoxTranslation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
          bottomLeft: Radius.circular(30.0),
        ),
      ),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 10.0),
      width: MediaQuery.of(context).size.width,
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
                      width: MediaQuery.of(context).size.width * 0.73,
                      child: Text(
                        'nomina',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.73,
                      child: Text(
                        'karya rujukan atau acuan dalam bentuk cetak maupun digital yang memuat kata dan ungkapan, dapat disusun menurut abjad atau tema, berisi keterangan tentang makna, pemakaian atau terjemahan',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                        ),
                        // overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Icon(
                            Icons.subdirectory_arrow_right,
                            color: Colors.black45,
                            size: 20.0,
                          ),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Column(
                          children: <Widget>[
                            ExampleWord(),
                            ExampleWord(),
                            ExampleWord(),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
