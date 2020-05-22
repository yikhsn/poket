import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/RowBoxMenuCategory.dart';
import 'package:kbbi_app/widgets/SectionTitle.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 30.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SectionTitle(),
            SizedBox(
              height: 15.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Column(
                children: <Widget>[
                  RowBoxMenuCategory(),
                  RowBoxMenuCategory(),
                  RowBoxMenuCategory(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
