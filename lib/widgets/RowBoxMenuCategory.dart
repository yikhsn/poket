import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/MenuCategory.dart';

class RowBoxMenuCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        MenuCategory(),
        MenuCategory(),
      ],
    );
  }
}
