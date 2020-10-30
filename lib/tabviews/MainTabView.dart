import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/BoxTranslation.dart';
import 'package:kbbi_app/models/word.dart';

class MainTabView extends StatelessWidget {
  final List<Word> listWord;

  MainTabView(this.listWord);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(
        top: 10.0,
        right: 20.0,
        bottom: 0.0,
        left: 20.0,
      ),
      child: ListView.builder(
        padding: EdgeInsets.symmetric(
          vertical: 15.0,
        ),
        itemCount: listWord.length,
        itemBuilder: (BuildContext context, int index) {
          int wordNumber = index + 1;
          return listWord[index].makna == null && listWord[index].kelas == null
              ? null
              : BoxTranslation(listWord[index], wordNumber);
        },
      ),
    );
  }
}
