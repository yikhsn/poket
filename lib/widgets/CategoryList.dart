import 'package:flutter/material.dart';
import 'package:kbbi_app/screens/SingleScreen.dart';
import 'package:kbbi_app/screens/ExploreScreen.dart';
import 'package:kbbi_app/models/category.dart';

class CategoryList extends StatelessWidget {
  final Category category;

  CategoryList(this.category);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ExploreScreen(this.category.katid, 'category'),
          ),
        );
      },
      child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 15.0,
          ),
          //
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(
                color: Colors.black12,
                width: 1.0,
              ),
            ),
          ),
          child: Row(
            children: <Widget>[
              Text(
                category.jenis,
                style: TextStyle(
                  color: Colors.redAccent[100],
                  fontSize: 18.0,
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Container(
                child: Icon(
                  Icons.arrow_right,
                  color: Colors.redAccent[100],
                  size: 20.0,
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Expanded(
                child: Text(
                  category.kategori,
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
