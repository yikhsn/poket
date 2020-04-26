import 'package:flutter/material.dart';
import 'package:kbbi_app/models/word.dart';
import 'package:kbbi_app/screens/single_screen.dart';
import 'package:kbbi_app/helpers/database_helper.dart';

List _words;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var db = new DatabaseHelper();

  int count = await db.getCount();
  print("Count: $count");

  _words = await db.getAllWords();

  for (int i = 0; i < _words.length; i++) {
    Word word = Word.map(_words[i]);

    print("Kata: ${word.katakunci} | Artikata: ${word.artikata}");
  }

  return runApp(
    Kbbi(),
  );
}

class Kbbi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kamus Besar Bahasa Indonesia",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Color(0xFFFEF9EB),
      ),
      home: SingleScreen(),
    );
  }
}
