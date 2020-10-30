import 'package:flutter/material.dart';
import 'package:kbbi_app/screens/HomeScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  return runApp(
    Kbbi(),
  );
}

class Kbbi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Lato',
        primarySwatch: Colors.teal,
        primaryColor: Colors.red,
        accentColor: Color(0xFFFEF9EB),
      ),
      home: HomeScreen(),
    );
  }
}
