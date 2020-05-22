import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Text(
        'Berdasarkan Kategori',
        style: TextStyle(
          color: Colors.black26,
          fontSize: 25.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
