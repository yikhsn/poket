import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/Turunan.dart';
import 'package:kbbi_app/models/word.dart';
import 'package:kbbi_app/helpers/database_helper.dart';

class TurunanTabView extends StatefulWidget {
  final Word wordIndux;

  TurunanTabView(this.wordIndux);

  @override
  _TurunanTabViewState createState() => _TurunanTabViewState();
}

class _TurunanTabViewState extends State<TurunanTabView> {
  List words;
  List<Word> listWord = [];
  Word word;

  final db = new DatabaseHelper();

  @override
  void initState() {
    super.initState();

    Future.delayed(
      Duration.zero,
      () async {
        await getWords();
      },
    );
  }

  void getWords() async {
    if (widget.wordIndux.eid != null) {
      words = await db.getTurunan(widget.wordIndux.eid);

      for (int i = 0; i < words.length; i++) {
        Word word_single = Word.map(words[i]);

        setState(() {
          listWord.add(word_single);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        child: listWord.length > 0
            ? ListView.builder(
                padding: EdgeInsets.only(
                  top: 10.0,
                  bottom: 20.0,
                  left: 0.0,
                  right: 30.0,
                ),
                itemCount: listWord.length,
                itemBuilder: (BuildContext context, int index) {
                  return Turunan(listWord[index], widget.wordIndux);
                },
              )
            : Container(
                child: Text('Tidak ada data'),
              ),
      ),
    );
  }
}
