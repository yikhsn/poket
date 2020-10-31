import 'package:flutter/material.dart';
import 'package:kbbi_app/helpers/database_helper.dart';
import 'package:kbbi_app/models/category.dart';
import 'package:kbbi_app/widgets/CategoryList.dart';

class CategoryScreen extends StatefulWidget {
  final String jenis;

  CategoryScreen(this.jenis);
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List _categorys;
  List<Category> listCategory = [];

  final db = new DatabaseHelper();

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () async {
      await initList();
    });
  }

  void initList() async {
    if (widget.jenis == 'semua') {
      _categorys = await db.getAllCategoryByJenis();
    } else {
      _categorys = await db.getCategoryByJenis(widget.jenis);
    }

    for (int i = 0; i < _categorys.length; i++) {
      Category category = Category.map(_categorys[i]);

      setState(() {
        listCategory.add(category);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kategori',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        // padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: ListView.builder(
          itemCount: listCategory.length,
          itemBuilder: (BuildContext context, int index) {
            return CategoryList(listCategory[index]);
          },
        ),
      ),
    );
  }
}
