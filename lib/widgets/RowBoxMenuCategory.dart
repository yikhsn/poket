import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/MenuCategory.dart';

class RowBoxMenuCategory extends StatelessWidget {
  final String firstCat;
  final String secondCat;

  RowBoxMenuCategory(this.firstCat, this.secondCat);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        MenuCategory(firstCat),
        MenuCategory(secondCat),
      ],
    );
  }
}
