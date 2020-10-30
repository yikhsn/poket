import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/ResultList.dart';
import 'package:kbbi_app/helpers/database_helper.dart';
import 'package:kbbi_app/models/word.dart';

class ExploreScreen extends StatefulWidget {
  final String letter;

  const ExploreScreen(this.letter);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  List _words;
  List<Word> listWord = [];

  final db = new DatabaseHelper();

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () async {
      await initList();
    });
  }

  void initList() async {
    _words = await db.getWordStartWith(widget.letter);

    for (int i = 0; i < _words.length; i++) {
      Word word = Word.map(_words[i]);

      setState(() {
        listWord.add(word);
      });
    }

    // print(listWord);
  }

  @override
  Widget build(BuildContext context) {
    print(widget.letter);
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore'),
      ),
      backgroundColor: Colors.white,
      body: Container(
        // padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: ListView.builder(
          itemCount: listWord.length,
          itemBuilder: (BuildContext context, int index) {
            return ResultList(listWord[index]);
          },
        ),
      ),
    );
  }
}
