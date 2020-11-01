import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/SectionTitle.dart';
import 'package:kbbi_app/widgets/MenuCategory.dart';

class CategorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 30.0,
        horizontal: 30.0,
      ),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SectionTitle('Berdasarkan kategori'),
            SizedBox(
              height: 15.0,
            ),
            Wrap(
              direction: Axis.horizontal,
              children: <Widget>[
                MenuCategory('bahasa'),
                MenuCategory('bidang'),
                MenuCategory('jenis'),
                MenuCategory('kelas'),
                MenuCategory('ragam'),
                MenuCategory('semua'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
