import 'package:flutter/material.dart';
import 'package:kbbi_app/models/word.dart';
import 'package:kbbi_app/screens/HomeScreen.dart';
import 'package:kbbi_app/screens/SingleScreen.dart';
import 'helpers/database_helper.dart';

List _words;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var db = new DatabaseHelper();

  int count = await db.getCount();
  print("Count: $count");

  // _words = await db.getAllWords();

  // for (int i = 0; i < _words.length; i++) {
  //   Word word = Word.map(_words[i]);

  //   print("Kata: ${word.entri} | Jenis: ${word.jenis}");
  // }

  return runApp(
    Kbbi(),
  );
}

class Kbbi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kamus Besar Bahasa Indonesia",
      theme: ThemeData(
        primarySwatch: Colors.teal,
        primaryColor: Colors.red,
        accentColor: Color(0xFFFEF9EB),
      ),
      home: HomeScreen(),
    );
  }
}
