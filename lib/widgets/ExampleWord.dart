import 'package:flutter/material.dart';
import 'package:kbbi_app/models/word.dart';
import 'package:kbbi_app/helpers/database_helper.dart';

class ExampleWord extends StatefulWidget {
  final Word word;
  const ExampleWord(this.word);

  @override
  _ExampleWordState createState() => _ExampleWordState();
}

class _ExampleWordState extends State<ExampleWord> {
  List listContoh = [];
  List contoh;
  final db = new DatabaseHelper();

  @override
  void initState() {
    super.initState();

    Future.delayed(
      Duration.zero,
      () async {
        await getContoh();
      },
    );
  }

  void getContoh() async {
    if (widget.word.mid != null) {
      listContoh = await db.getContoh(widget.word.mid);

      // for (int i = 0; i < contoh.length; i++) {
      //   List contoh_extract = Word.map(contoh[i]);

      //   setState(() {
      //     listContoh.add(contoh_extract);
      //   });
      // }
    }
  }

  @override
  Widget build(BuildContext context) {
    print(listContoh);

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
              widget.word.mid.toString(),
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
